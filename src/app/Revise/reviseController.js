const jwtMiddleware = require("../../../config/jwtMiddleware");
const reviseProvider = require("./reviseProvider");
const reviseService = require("./reviseService");
const baseResponse = require("../../../config/baseResponseStatus");
const {response, errResponse} = require("../../../config/response");
const regexEmail = require("regex-email");
const {emit} = require("nodemon");
const nodemailer = require("nodemailer");

/**
 * API No. 1
 * API Name : revise 생성 API
 * [POST] /app/revise
 */
exports.postRevise = async function (req, res) {

    const {title, body} = req.body;

    if(!title)
        return res.send(response(baseResponse.REVISE_TITLE_EMPTY));

    if(!body)
        return res.send(response(baseResponse.REVISE_BODY_EMPTY));


    const reviseResponse = await reviseService.createRevise(
        title,
        body
    );

    return res.send(reviseResponse);
};

/**
 * API No. 2
 * API Name : revise 조회 API
 * [GET] /app/getRevise
 */
exports.getRevise = async function(req, res) {
    const reviseListResult = await reviseProvider.retrieveRevise();
    return res.send(reviseListResult);
}


/**
 * API No. 3
 * API Name : revise 메일 보내기 API
 * [POST] /app/postMail
 */
exports.postMail = async function(req, res) {
    const {title, body} = req.body;

    if(!title)
        return res.send(response(baseResponse.REVISE_TITLE_EMPTY));

    if(!body)
        return res.send(response(baseResponse.REVISE_BODY_EMPTY));

    const reviseResponse = await reviseService.createRevise(
        title,
        body
    );


    const email = {
        "host" : "smtp.mailtrap.io",
        port: 2525,
        secure: false,
        auth:{
            user:"3d0e985b880725",
            pass:"21f4c8f16f70f4"
        }
    }

    const send = async(data) => {
        nodemailer.createTransport(email).sendMail(data, function(error, info) {
            if(error) {
                console.log(error);
            } else {
                console.log("message 전송 완료");
                return info.response;
            }
        });
    };

    const content = {
        from: "gentleman959@gmail.com",
        to : "208ede1b74-0e0eee@inbox.mailtrap.io",
        subject: req.body.title,
        html: req.body.body
    };

    res.send(content);
}

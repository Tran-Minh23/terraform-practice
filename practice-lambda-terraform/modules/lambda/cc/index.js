/* Amplify Params - DO NOT EDIT
	ENV
	REGION
	AUTH_NRISISPROJECT65454508_USERPOOLID
Amplify Params - DO NOT EDIT */

/**
 * @type {import('@types/aws-lambda').APIGatewayProxyHandler}
 */

exports.handler = async (event, context, callback) => {
    console.log(event)

    return callback(null, event);

};
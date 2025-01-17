const COOKIE_KEY = "auth";
// const COOKIE_KEY = 'cookie';

export const handle = async ({event, resolve}) => {
  const authCookie = event.cookies.get(COOKIE_KEY);
  if (authCookie) {
    event.locals.user = authCookie;
  }

  return await resolve(event);
};
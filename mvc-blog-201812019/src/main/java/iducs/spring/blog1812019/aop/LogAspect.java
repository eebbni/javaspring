package iducs.spring.blog1812019.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

@Aspect
@Component
public class LogAspect {
	
	Logger logger =  LoggerFactory.getLogger(LogAspect.class);

	@Pointcut("execution(* iducs.spring.mvcblog.service.*ServiceImpl.*(..))")
	public void logginPointcut() { }
	
    @Around("logginPointcut()")
	//@Around("execution(* iducs.spring.mvcblog.service.BlogServiceImpl.*(..))")
	public Object logging(ProceedingJoinPoint pjp) throws Throwable {
	    logger.info("start - " + pjp.getSignature().getDeclaringTypeName() + " / " + pjp.getSignature().getName());
	    Object result = pjp.proceed();
	    logger.info("finished - " + pjp.getSignature().getDeclaringTypeName() + " / " + pjp.getSignature().getName());
	    return result;
	}
}

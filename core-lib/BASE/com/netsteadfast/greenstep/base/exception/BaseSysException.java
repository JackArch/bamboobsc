/* 
 * Copyright 2012-2016 bambooCORE, greenstep of copyright Chen Xin Nien
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * -----------------------------------------------------------------------
 * 
 * author: 	Chen Xin Nien
 * contact: chen.xin.nien@gmail.com
 * 
 */
package com.netsteadfast.greenstep.base.exception;

import org.apache.log4j.Logger;

public class BaseSysException extends RuntimeException implements BaseExceptionProvide {
	private static final long serialVersionUID = -2834768889386465243L;
	protected Logger logger=Logger.getLogger(BaseSysException.class);
	private String message="";
	
	public BaseSysException() {
		super("");
	}
	
	public BaseSysException(String message) {
		super(message);
		logger.warn(message);
	}

	@Override
	public String getMessage() {
		if ("".equals(this.message) || null==this.message) {
			this.message=super.getMessage();
		}
		return this.message;
	}

	@Override
	public void setMessage(String message) {
		this.message=message;
	}

}

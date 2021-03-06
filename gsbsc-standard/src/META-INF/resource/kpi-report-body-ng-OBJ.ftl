<!-- BSC_PROG003D0001Q -->
<#list treeObj.visions as vision >
	
	<table width="100%" border="0" cellspacing="1" cellpadding="1" bgcolor="${backgroundColor}">
		<tr>
			<td width="50%" align="left" bgcolor="${backgroundColor}"><b><font color='${fontColor}' size="+1">${objectiveTitle}</font></b></td>
			<td width="50%" align="left" bgcolor="${backgroundColor}"><b><font color='${fontColor}' size="+1">${kpiTitle}</font></b></td>
		</tr>
		
	<#list vision.perspectives as perspective >
		<tr>
		
		<#assign p=0 >	
		<#list perspective.objectives as objective >	
			<#if ( p > 0 ) >
				<tr>
			</#if>
			
			<td width="25%" bgcolor="${objective.bgColor}" rowspan="${objective.row}" >
				<table border="0" width="100%">
					<tr>
						<td width="100%" colspan="2" bgcolor="${objective.bgColor}">
							<font color="${objective.fontColor}" >
							<b>${objective.name}</b>
							</font>
							${objective.imgIcon}
						</td>						
					</tr>
					<tr>
						<td align="left" bgcolor="${objective.bgColor}" width="15%">
							<font color="${objective.fontColor}" >
							${scoreLabel}
							</font>
						</td>
						<td align="left" bgcolor="${objective.bgColor}" width="85%">
							<font color="${objective.fontColor}" >
							<b>${objective.score?string(',###.##')}</b>
							</font>
						</td>
					</tr>					
					<tr>
						<td align="left" bgcolor="${objective.bgColor}" width="15%">
							<font color="${objective.fontColor}" >
							${weightLabel}
							</font>
						</td>
						<td align="left">
							<font color="${objective.fontColor}" width="85%">
							${objective.weight}%
							</font>
						</td>
					</tr>
					<tr>
						<td align="left" bgcolor="${objective.bgColor}" width="15%">
							<font color="${objective.fontColor}" >
							${targetLabel}
							</font>
						</td>
						<td align="left" bgcolor="${objective.bgColor}" width="85%">
							<font color="${objective.fontColor}" >
							${objective.target}
							</font>
						</td>
					</tr>						
					<tr>
						<td align="left" bgcolor="${objective.bgColor}" width="15%">
							<font color="${objective.fontColor}" >
							${minLabel}
							</font>
						</td>
						<td align="left" bgcolor="${objective.bgColor}" width="85%">
							<font color="${objective.fontColor}" >
							${objective.min}
							</font>
						</td>
					</tr>					
					<tr>
						<td align="left" bgcolor="${objective.bgColor}" width="100%" colspan="2">
							<font color="${objective.fontColor}" >
							${objective.description}
							</font>
						</td>
					</tr>
															
				</table>	
			</td>
					
				<#list objective.kpis as kpi >
					
					<td width="50%" bgcolor="${kpi.bgColor}" >
						<table border="0" width="100%">
							<tr>
								<td width="100%" colspan="2" bgcolor="${kpi.bgColor}">
									<font color="${kpi.fontColor}" >
									<b>${kpi.name}</b>
									</font>
									${kpi.imgIcon}
								</td>						
							</tr>
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${scoreLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									<b>${kpi.score?string(',###.##')}</b>
									</font>
								</td>
							</tr>							
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${weightLabel}
									</font>
								</td>
								<td align="left">
									<font color="${kpi.fontColor}" width="85%">
									${kpi.weight}%
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${maxLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									${kpi.max}
									</font>
								</td>
							</tr>								
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${targetLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									${kpi.target}
									</font>
								</td>
							</tr>						
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${minLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									${kpi.min}
									</font>
								</td>
							</tr>								
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${managementLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									${kpi.managementName}
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${calculationLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									${kpi.calculationName}
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${unitLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									${kpi.unit}
									</font>
								</td>
							</tr>							
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${formulaLabel}
									</font>
								</td>
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
									${kpi.formula.name}
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${organizationLabel}
									</font>
								</td>							
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >									
										<#list kpi.organizations as org >
										${org.orgId}-${org.name},&nbsp;
										</#list>
									</font>
								</td>
							</tr>
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="15%">
									<font color="${kpi.fontColor}" >
									${employeeLabel}
									</font>
								</td>								
								<td align="left" bgcolor="${kpi.bgColor}" width="85%">
									<font color="${kpi.fontColor}" >
										<#list kpi.employees as emp >
										${emp.empId}-${emp.fullName},&nbsp;
										</#list>
									</font>
								</td>
							</tr>								
							<tr>
								<td align="left" bgcolor="${kpi.bgColor}" width="100%" colspan="2">
									<font color="${kpi.fontColor}" >
									${kpi.description}
									</font>
								</td>
							</tr>
																																								
						</table>				
					</td>
					
					</tr>
					
				</#list>
			
			<#assign p = p + 1 >
		</#list>
				
	</#list>
		
	</table>	
		
</#list>
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/common/validator/group/ClaimsStatusInquiryMemberInfoGroup.java
-- Search Results --> 

11: * File name: ClaimsStatusInquiryMemberInfoGroup.java History:
15:public interface ClaimsStatusInquiryMemberInfoGroup {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/common/validator/group/ClaimsStatusInquiryMemberOtherDetailsGroup.java
-- Search Results --> 

11: * File name: ClaimsStatusInquiryMemberOtherDetailsGroup.java History:
15:public interface ClaimsStatusInquiryMemberOtherDetailsGroup {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/common/validator/group/InstitutionalMemberInfoAddressGroup.java
-- Search Results --> 

3:public interface InstitutionalMemberInfoAddressGroup {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/common/validator/group/MemberInfoGroup.java
-- Search Results --> 

3:public interface MemberInfoGroup {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/common/vo/MemberInformationVO.java
-- Search Results --> 

41:import com.xerox.he.provider.claims.common.validator.group.MemberInfoGroup;
48: * File name: MemberInformationVO.java History:
52:@ApiModel(value = "MemberInformationVO", description = "Holds the Member Information VO")
54:@JsonRootName("MemberInformation")
56:@CompareWithSystemDate(date1 = ProviderClaimsConstants.PRV_CLAIMS_DATEOFBIRTH, message = ClaimsCommonConstant.ECLPC027, groups = MemberInfoGroup.class),
59:public class MemberInformationVO extends EnterpriseBaseVO {
62:     * Holds memberId
64:    @ApiModelProperty(value = "memberId", required = true, dataType = PMDConstants.STRING)
66:    @NotEmpty(message = ClaimsCommonConstant.ECLPC017, groups = {MemberInfoGroup.class}),
69:    @JsonProperty("memberId")
70:    private String memberId;
75:    @Pattern(regexp = ProviderClaimsConstants.DECIMAL_FORMAT_AMOUNT_10COMMA4, message = ClaimsCommonConstant.ECLPC022, groups = {MemberInfoGroup.class})
117:    @Pattern(regexp = ClaimsCommonConstant.DATE_PATTERN, message = ClaimsCommonConstant.ECLPC023, groups = {MemberInfoGroup.class})
139:     * Holds memberAddress
141:    @ApiModelProperty(value = "memberAddress", required = false, dataType = "AddressVO")
142:    @JsonProperty("memberAddress")
148:    private AddressVO memberAddress;
188:     * @return the memberId
190:    public String getMemberId() {
191:        return memberId;
195:     * @param memberId the memberId to set
197:    public void setMemberId(String memberId) {
198:        this.memberId = memberId;
258:     * @return the memberAddress
260:    public AddressVO getMemberAddress() {
261:        return memberAddress;
265:     * @param memberAddress the memberAddress to set
267:    public void setMemberAddress(AddressVO memberAddress) {
268:        this.memberAddress = memberAddress;
378:     * @Override public String toString() { return "MemberInformationVO [memberId=" + memberId + ", lastName=" +
381:     * ", memberAddress=" + memberAddress + ", subscriberInformation=" + subscriberInformation +
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/dentalclaim/mapper/BCIMemberInfoDetailsVOChainMapper.java
-- Search Results --> 

27:import com.xerox.he.provider.claims.common.vo.MemberInformationVO;
31: * File name: BCIMemberInfoDetailsVOChainMapper.java History:
35:@Named("BCIMemberInfoDetailsVOCMapper")
36:public class BCIMemberInfoDetailsVOChainMapper extends
59:        MemberInformationVO memberInformationVO =
60:            inputObj.getBasicClaimInfo().getMemberInformationVO();
61:        SubscriberVO memberInfo = new SubscriberVO();
62:        if (StringUtils.isNotEmpty(memberInformationVO.getMemberId())) {
63:            memberInfo.setSubscriberId(memberInformationVO.getMemberId());
67:        if (memberInformationVO.getName() != null) {
68:            memberInfo =
69:                subscriberMapper.mapVOToDO(memberInformationVO.getName(),
70:                    memberInfo);
73:        if (StringUtils.isNotEmpty(memberInformationVO.getDateOfBirth())) {
74:            memberInfo.setDateOfBirth(memberInformationVO.getDateOfBirth());
76:        if (StringUtils.isNotEmpty(memberInformationVO.getGender())) {
77:            memberInfo.setGender(memberInformationVO.getGender());
79:        if (StringUtils.isNotEmpty(memberInformationVO.getSsn())) {
80:            memberInfo.setSsn(memberInformationVO.getSsn());
82:        if (StringUtils.isNotEmpty(memberInformationVO
84:            memberInfo.setPropertyCasualtyNumber(memberInformationVO
87:        // member address
89:        if (memberInformationVO.getMemberAddress() != null) {
90:            outputDOObj.setMemberAddress(addressMapper
91:                .mapVOToDO(memberInformationVO.getMemberAddress()));
93:        if (memberInformationVO.getSubscriberInformation() != null) {
95:            if (StringUtils.isNotEmpty(memberInformationVO
97:                subscriberInfoVO.setPayerRespSeqCode(memberInformationVO
100:            if (StringUtils.isNotEmpty(memberInformationVO
102:                subscriberInfoVO.setGroupPolicyNumber(memberInformationVO
105:            if (StringUtils.isNotEmpty(memberInformationVO
107:                subscriberInfoVO.setInsuranceTypeCode(memberInformationVO
110:            if (StringUtils.isNotEmpty(memberInformationVO
112:                subscriberInfoVO.setGroupOrPlanName(memberInformationVO
115:            if (StringUtils.isNotEmpty(memberInformationVO
117:                subscriberInfoVO.setClaimFillingCode(memberInformationVO
122:        if (!objectProviderClaimsCommonUtility.isEmpty(memberInformationVO
124:            if (memberInformationVO.isOtherInsuranceInformation()) {
132:        outputDOObj.setMemberInfo(memberInfo);
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/inquiry/claims/vo/ClaimsInquiryMemberInformationVO.java
-- Search Results --> 

27:import com.xerox.he.provider.claims.common.validator.group.ClaimsStatusInquiryMemberInfoGroup;
32: * File name: ClaimsInquiryMemberInformationVO.java History:
37:@ApiModel(value = "ClaimsInquiryMemberInformationVO", description = "Holds the Claims Inquiry Member Information VO details ")
38:public class ClaimsInquiryMemberInformationVO extends EnterpriseBaseVO {
41:     * Holds the Member ID
44:    @JsonProperty("memberID")
45:    @ApiModelProperty(value = "memberID", required = false, dataType = PMDConstants.STRING)
46:    private String memberID;
55:    LASTNAME_NOT_EMPTY, LASTNAME_PATTERN1}, groups = {ClaimsStatusInquiryMemberInfoGroup.class}, messages = {
85:     * @return the memberID
87:    public String getMemberID() {
88:        return memberID;
92:     * @param memberID the memberID to set
94:    public void setMemberID(String memberID) {
95:        this.memberID = memberID;
160:        return "ClaimsInquiryMemberInformationVO [memberID=" + memberID
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./Claims/src/main/java/com/xerox/he/provider/claims/professionalclaim/mapper/MemberInfoVOChainMapper.java
-- Search Results --> 

26:import com.xerox.he.provider.claims.common.vo.MemberInformationVO;
30: * File name: MemberInfoVOChainMapper.java History:
34:@Named("memberInfoVOChainMapper")
35:public class MemberInfoVOChainMapper extends
58:        MemberInformationVO memberInfo = new MemberInformationVO();
60:        memberInfo = professionalClaimVO.getBasicClaimInfo().getMemberInfo();
62:        // MemberInfo
67:        // Member Information
68:        if (memberInfo != null) {
69:            subscriberVO.setSubscriberId(memberInfo.getMemberId());
71:            if (memberInfo.getName() != null) {
73:                    subscriberMapper.mapVOToDO(memberInfo.getName(),
77:            subscriberVO.setDateOfBirth(memberInfo.getDateOfBirth());
79:            subscriberVO.setGender(memberInfo.getGender());
80:            subscriberVO.setSsn(memberInfo.getSsn());
82:            subscriberVO.setWeight(memberInfo.getWeight());
84:            subscriberVO.setDateOfDeath(memberInfo.getDateOfDeath());
86:            subscriberVO.setPropertyCasualtyNumber(memberInfo
89:            if (memberInfo.getPregnant()) {
95:            subscriberVO.setLastMenstrualPeriod(memberInfo
98:            // Member Address
100:            if (memberInfo.getMemberAddress() != null) {
102:                providerWebClaim.setMemberAddress(addressMapper
103:                    .mapVOToDO(memberInfo.getMemberAddress()));
107:            subscriberInfo.setPayerRespSeqCode(memberInfo
109:            subscriberInfo.setGroupPolicyNumber(memberInfo
111:            subscriberInfo.setInsuranceTypeCode(memberInfo
113:            subscriberInfo.setGroupOrPlanName(memberInfo
115:            subscriberInfo.setClaimFillingCode(memberInfo
119:            if (memberInfo.getCasualtyContactInfo() != null) {
120:                propertyCasualtyContactInfo.setName(memberInfo
122:                propertyCasualtyContactInfo.setPhone(memberInfo
124:                propertyCasualtyContactInfo.setExt(memberInfo
129:            if (memberInfo.isOtherInsuranceInformation()) {
138:        providerWebClaim.setMemberInfo(subscriberVO);
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/mapper/MemberClaimDetailDOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.claim.mapper;
22:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.LineItemDetailsVO;
24:import com.xerox.he.member.claim.vo.MemberClaimDetailsVO;
25:import com.xerox.he.member.common.vo.LineItemVO;
26:import com.xerox.he.member.referencedata.service.ReferenceDataService;
33:public class MemberClaimDetailDOMapper implements
34:    DOMapper<List<LineItemDetailsVO>, MemberClaimDetailsVO> {
37:        .getLogger(MemberClaimDetailDOMapper.class.getName());
45:    public MemberClaimDetailsVO mapDOToVO(List<LineItemDetailsVO> domainObj) {
97:        MemberClaimDetailsVO memberClaimDetails = new MemberClaimDetailsVO();
99:        memberClaimDetails.setLineItems(lineItemList);
101:        return memberClaimDetails;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/mapper/MemberClaimsDOToVOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.claim.mapper;
19:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemClaimDetailsVO;
21:import com.xerox.he.member.claim.vo.MemberClaimVO;
22:import com.xerox.he.member.referencedata.service.ReferenceDataService;
27:@Named("memberClaimsDOMapper")
29:public class MemberClaimsDOToVOMapper implements
30:		DOMapper<MemClaimDetailsVO, MemberClaimVO> {
42:	public MemberClaimVO mapDOToVO(MemClaimDetailsVO memClaimDetailsVO) {
44:		MemberClaimVO memberClaim = new MemberClaimVO();
45:		memberClaim.setProviderName(memClaimDetailsVO.getProviderName());
46:		memberClaim.setBeginDate(convertDate(memClaimDetailsVO.getBeginDate()));
47:		memberClaim.setEndDate(convertDate(memClaimDetailsVO.getEndDate()));
48:		memberClaim.setClaimTypeCode(memClaimDetailsVO.getClaimType());
49:		memberClaim.setClaimType(refDataService.getLongDescription("Member",
51:		memberClaim.setClaimNumber(memClaimDetailsVO.getClaimNumber());
52:		memberClaim.setClaimsPaidDate(convertDate(memClaimDetailsVO
54:		memberClaim.setTotalSubmittedCharges(memClaimDetailsVO
56:		memberClaim.setClaimStatus(refDataService.getLongDescription("Claims4",
59:		return memberClaim;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/mapper/MemberClaimsListMapper.java
-- Search Results --> 

1:package com.xerox.he.member.claim.mapper;
7:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemClaimDetailsVO;
9:import com.xerox.he.member.claim.vo.MemberClaimVO;
10:import com.xerox.he.member.common.mapper.ListDOMapper;
14:public class MemberClaimsListMapper extends ListDOMapper<MemClaimDetailsVO, MemberClaimVO>{
17:	@Named("memberClaimsDOMapper")
18:	private DOMapper< MemClaimDetailsVO, MemberClaimVO> doMapper;
21:	protected DOMapper<MemClaimDetailsVO, MemberClaimVO> getDOMapper() {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/mapper/MemberClaimsVOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.claim.mapper;
16:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemberClaimsSearchCriteriaVO;
18:import com.xerox.he.member.claim.vo.MemberClaimsSearchVO;
23:@Named("memberClaimsVOMapper")
25:public class MemberClaimsVOMapper implements
26:    VOMapper<MemberClaimsSearchVO, MemberClaimsSearchCriteriaVO> {
44:    public MemberClaimsSearchCriteriaVO mapVOToDO(MemberClaimsSearchVO valueObj) {
46:        MemberClaimsSearchCriteriaVO memberClaimsSearchCriteriaVO =
47:            new MemberClaimsSearchCriteriaVO();
48:        memberClaimsSearchCriteriaVO.setSysID(Long.parseLong(valueObj.getMemberId()));
49:        memberClaimsSearchCriteriaVO.setBeginDate(valueObj.getValidBeginDate());
50:        memberClaimsSearchCriteriaVO.setProviderFirstName(valueObj
52:        memberClaimsSearchCriteriaVO.setProviderLastName(valueObj
54:        memberClaimsSearchCriteriaVO.setClaimType(valueObj.getClaimType());
55:        memberClaimsSearchCriteriaVO.setEndDate(valueObj.getValidEndDate());
56:        memberClaimsSearchCriteriaVO.setAscending(valueObj.isAscending());
57:        memberClaimsSearchCriteriaVO.setStartIndex(valueObj.getStartIndex());
59:            memberClaimsSearchCriteriaVO.setRowsPerPage(valueObj
62:            memberClaimsSearchCriteriaVO.setRowsPerPage(DEFAULT_PAGE_SIZE);
67:            memberClaimsSearchCriteriaVO
70:            memberClaimsSearchCriteriaVO.setSortColumn(DEFAULT_SORT_CRITERIA_CLAIMS);
76:            memberClaimsSearchCriteriaVO
79:            memberClaimsSearchCriteriaVO.setSortColumn(DEFAULT_SORT_CRITERIA_PROVIDERSVISITED);
84:        return memberClaimsSearchCriteriaVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/mapper/ProviderVisitedDOToVOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.claim.mapper;
22:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemClaimDetailsVO;
24:import com.xerox.he.member.claim.vo.MemberClaimVO;
25:import com.xerox.he.member.referencedata.service.ReferenceDataService;
33:		DOMapper<MemClaimDetailsVO, MemberClaimVO> {
39:	public MemberClaimVO mapDOToVO(MemClaimDetailsVO memClaimDetailsVO) {
40:		MemberClaimVO providerVisited = new MemberClaimVO();
59:				"Member", "C_TY_CD", memClaimDetailsVO.getClaimTypeCD()));
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/mapper/ProviderVisitedResultListMapper.java
-- Search Results --> 

1:package com.xerox.he.member.claim.mapper;
7:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemClaimDetailsVO;
9:import com.xerox.he.member.claim.vo.MemberClaimVO;
10:import com.xerox.he.member.common.mapper.ListDOMapper;
15:		extends ListDOMapper<MemClaimDetailsVO, MemberClaimVO> {
19:	private DOMapper<MemClaimDetailsVO, MemberClaimVO> doMapper;
22:	protected DOMapper<MemClaimDetailsVO, MemberClaimVO> getDOMapper() {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/rest/MemberClaimsResource.java
-- Search Results --> 

9:package com.xerox.he.member.claim.rest;
21:import com.xerox.he.member.claim.vo.MemberClaimDetailsVO;
22:import com.xerox.he.member.claim.vo.MemberClaimVO;
23:import com.xerox.he.member.common.vo.EnterpriseSearchResultsVO;
29:public interface MemberClaimsResource {
34:    public EnterpriseSearchResultsVO<MemberClaimVO> getClaims(
40:    public MemberClaimDetailsVO getClaimDetails(
41:        @QueryParam("memberid")Long memberid,
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/rest/MemberClaimsResourceImpl.java
-- Search Results --> 

9:package com.xerox.he.member.claim.rest;
20:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
21:import com.acs.enterprise.mmis.member.common.vo.MemberCommonDetailVO;
22:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.LineItemDetailsVO;
23:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemClaimDetailsVO;
24:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemberClaimsSearchCriteriaVO;
29:import com.xerox.he.member.claim.service.MemberClaimsService;
30:import com.xerox.he.member.claim.vo.MemberClaimDetailsVO;
31:import com.xerox.he.member.claim.vo.MemberClaimVO;
32:import com.xerox.he.member.claim.vo.MemberClaimsSearchVO;
33:import com.xerox.he.member.common.service.MemberCache;
34:import com.xerox.he.member.common.vo.EnterpriseSearchResultsVO;
39:@Named("memberClaimsRestService")
41:public class MemberClaimsResourceImpl extends BaseRestServiceImpl implements MemberClaimsResource {
44:        .getLogger(MemberClaimsResourceImpl.class.getName());
50:    @Named("memberClaimsVOMapper")
51:    private VOMapper<MemberClaimsSearchVO, MemberClaimsSearchCriteriaVO> memberClaimsVOMapper;
54:    @Named("memberClaimsListMapper")
55:    private DOMapper<List<MemberCommonDetailVO>, List<MemberClaimVO>> memberClaimsDOMapper;
58:    @Named("memberClaimDetailDOMapper")
59:    private DOMapper<List<LineItemDetailsVO>, MemberClaimDetailsVO> memberClaimsDetailDOMapper;
62:    private MemberClaimsService memberClaimsService;
68:    private DOMapper<List<MemClaimDetailsVO>, List<MemberClaimVO>> providerVisitedDOMapper;
71:    private MemberCache memberCache;
76:     * @see com.xerox.he.member.claim.rest.MemberClaimsResource#getClaims(com.xerox.he.member.claim.vo.MemberClaimsSearchVO)
80:    public EnterpriseSearchResultsVO<MemberClaimVO> getClaims(
83:        EnterpriseSearchResultsVO<MemberClaimVO> searchResults = null;
84:        MemberClaimsSearchVO requestCriteriaVO = unmarshall(requestCriteria, MemberClaimsSearchVO.class);
86:        memberCache.isMemberIdValid(requestCriteriaVO.getMemberId());
89:        MemberClaimsSearchCriteriaVO searchCriteriaVo =
90:                    memberClaimsVOMapper.mapVOToDO(requestCriteriaVO);
103:    private EnterpriseSearchResultsVO<MemberClaimVO> getClaims(MemberClaimsSearchCriteriaVO searchCriteriaVo) 
106:        List<MemberClaimVO> memberClaims = null;
107:        MemberCommonDetailVO commonDetailVO = null;
108:        EnterpriseSearchResultsVO<MemberClaimVO> searchResults = null;
111:            commonDetailVO = memberClaimsService.getClaims(searchCriteriaVo);
113:            memberClaims = memberClaimsDOMapper.mapDOToVO(commonDetailVO.getSpanList());
115:            if (memberClaims.isEmpty() && memberClaims.size() == 0) {
121:            searchResults.setSearchResults(memberClaims);
123:        } catch (MemberSupportBusinessException e) {
133:     * @see com.xerox.he.member.claim.rest.MemberClaimsResource#getClaimDetails(com.xerox.he.member.claim.vo.MemberClaimsSearchVO)
136:    public MemberClaimDetailsVO getClaimDetails(Long memberSysId, String claimNo,
141:        memberCache.isMemberIdValid(memberSysId == null ? null:memberSysId.toString());
151:                memberClaimsService.getClaimDetails(claimNo, memberSysId,
153:        } catch (MemberSupportBusinessException e) {
158:        MemberClaimDetailsVO memberClaimDetails =
159:            memberClaimsDetailDOMapper.mapDOToVO(lineItemVO);
162:        return memberClaimDetails;
166:    private EnterpriseSearchResultsVO<MemberClaimVO> searchProviderVisited(
167:        MemberClaimsSearchCriteriaVO memberClaimsSearchCriteriaVO)
172:        log.debug("#######memberClaimsSearchCriteriaVO######"
173:            + memberClaimsSearchCriteriaVO);
175:            + memberClaimsSearchCriteriaVO.getProviderFirstName());
176:        log.debug("begin Date" + memberClaimsSearchCriteriaVO.getBeginDate());
183:            		memberClaimsService
184:                    .searchProvidersVisited(memberClaimsSearchCriteriaVO);
185:        } catch (MemberSupportBusinessException e) {
194:        List<MemberClaimVO> providerVisited =
199:        EnterpriseSearchResultsVO<MemberClaimVO> searchResults =
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/service/MemberClaimsService.java
-- Search Results --> 

9:package com.xerox.he.member.claim.service;
14:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
15:import com.acs.enterprise.mmis.member.common.vo.MemberCommonDetailVO;
16:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.LineItemDetailsVO;
17:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemberClaimsSearchCriteriaVO;
22:public interface MemberClaimsService {
24:    public MemberCommonDetailVO getClaims(
25:        MemberClaimsSearchCriteriaVO memberClaimsSearch)
26:        throws MemberSupportBusinessException;
29:        Long sysId, String claimType) throws MemberSupportBusinessException;
32:            MemberClaimsSearchCriteriaVO memberClaimsSearchCriteriaVO)
33:            throws MemberSupportBusinessException;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/service/MemberClaimsServiceImpl.java
-- Search Results --> 

9:package com.xerox.he.member.claim.service;
18:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
19:import com.acs.enterprise.mmis.member.common.vo.MemberCommonDetailVO;
20:import com.acs.enterprise.mmis.member.support.common.delegate.MemberSupportDelegate;
21:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.LineItemDetailsVO;
22:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.MemberClaimsSearchCriteriaVO;
29:public class MemberClaimsServiceImpl implements MemberClaimsService {
32:    private MemberSupportDelegate memberSupportDelegate;
35:    public MemberCommonDetailVO getClaims(
36:        MemberClaimsSearchCriteriaVO memberClaimsSearch)
37:        throws MemberSupportBusinessException {
39:        return memberSupportDelegate
40:            .getClaimsForSearchCriteria(memberClaimsSearch);
46:        Long sysId, String claimType) throws MemberSupportBusinessException {
48:        return memberSupportDelegate.getClaimDetails(claimNumber, sysId,
55:     * @throws MemberSupportBusinessException
56:     * @see com.xerox.he.member.providervisited.service.ProviderVisitedDetails#searchProvidersVisited(com.xerox.he.member.providervisited.vo.ProviderVisitedSearchCriteria)
60:        MemberClaimsSearchCriteriaVO memberClaimsSearchCriteriaVO)
61:        throws MemberSupportBusinessException {
63:        return memberSupportDelegate
64:            .getProviderVisitedSearchResults(memberClaimsSearchCriteriaVO);
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/validator/MemberClaimValidator.java
-- Search Results --> 

9:package com.xerox.he.member.claim.validator;
30:import com.xerox.he.member.claim.vo.MemberClaimsSearchVO;
36:public class MemberClaimValidator implements
37:    ConstraintValidator<ValidateMemberClaim, MemberClaimsSearchVO> {
39:        .getLogger(MemberClaimValidator.class.getName());
55:    public void initialize(ValidateMemberClaim arg0) {
65:    public boolean isValid(MemberClaimsSearchVO searchCriteria,
70:        if (StringUtils.isBlank(searchCriteria.getMemberId())) {
71:            context.buildConstraintViolationWithTemplate("invalid member id")
72:                .addPropertyNode("memberId").addConstraintViolation();
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/validator/ValidateMemberClaim.java
-- Search Results --> 

9:package com.xerox.he.member.claim.validator;
26:@Constraint(validatedBy = MemberClaimValidator.class)
28:public @interface ValidateMemberClaim {
41:        ValidateMemberClaim[] value();
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/vo/ClaimDetailRequestVO.java
-- Search Results --> 

9:package com.xerox.he.member.claim.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/vo/MemberClaimDetailsVO.java
-- Search Results --> 

9:package com.xerox.he.member.claim.vo;
14:import com.xerox.he.member.common.vo.LineItemVO;
19:@JsonRootName("MemberClaimDetails")
20:public class MemberClaimDetailsVO {
22:    private String memberName;
40:    public String getMemberName() {
41:        return memberName;
44:    public void setMemberName(String memberName) {
45:        this.memberName = memberName;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/vo/MemberClaimsSearchVO.java
-- Search Results --> 

9:package com.xerox.he.member.claim.vo;
16:import com.xerox.he.member.claim.validator.ValidateMemberClaim;
17:import com.xerox.he.member.common.vo.EnterpriseBaseSearchCriteriaVO;
23:@JsonRootName("MemberClaimsSearch")
24:@ValidateMemberClaim
25:public class MemberClaimsSearchVO extends EnterpriseBaseSearchCriteriaVO implements
42:    private String memberId;
149:     * @return the memberId
151:    public String getMemberId() {
152:        return memberId;
156:     * @param memberId the memberId to set
158:    public void setMemberId(String memberId) {
159:        this.memberId = memberId;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/claim/vo/MemberClaimVO.java
-- Search Results --> 

9:package com.xerox.he.member.claim.vo;
17:@JsonRootName("MemberClaim")
18:public class MemberClaimVO {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/mapper/AddressDOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.common.mapper;
27:import com.xerox.he.member.common.vo.AddressViewVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/mapper/AddressVOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.common.mapper;
19:import com.xerox.he.member.common.vo.AddressViewVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/mapper/DOMapperWithArgs.java
-- Search Results --> 

9:package com.xerox.he.member.common.mapper;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/mapper/ListDOMapper.java
-- Search Results --> 

1:package com.xerox.he.member.common.mapper;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/mapper/MemberDOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.common.mapper;
19:import com.acs.enterprise.mmis.member.common.vo.MemberBasicInfo;
21:import com.xerox.he.member.common.vo.MemberVO;
22:import com.xerox.he.member.common.vo.NameVO;
27:@Named("memberDOMapper")
29:public class MemberDOMapper implements DOMapper<MemberBasicInfo, MemberVO> {
31:    private final Logger log = LoggerFactory.getLogger(MemberDOMapper.class
37:    public MemberVO mapDOToVO(MemberBasicInfo domainObj) {
41:        MemberVO member = null;
52:            member = new MemberVO(name, dob, domainObj.getGender());
53:            member.setSysId(domainObj.getMemSysID());
55:        return member;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/provider/SecurityTokenFilter.java
-- Search Results --> 

9:package com.xerox.he.member.common.provider;
27:import com.xerox.he.member.support.service.MemberSupportServices;
36:    MemberSupportServices memberSupportServices;
66:        String memberId = context.getHeaderString("memberid");
73:            if (StringUtils.isBlank(memberId)) {
74:                memberId =
75:                    getMemberIdFromUrl(context.getUriInfo().getPathParameters());
76:                if (StringUtils.isBlank(memberId)) {
90:                            memberSupportServices
91:                                .getMemberActiveSession(memberId);
117:    private String getMemberIdFromUrl(
119:        String memberid = "";
120:        List<String> values = pathParameters.get("memberid");
122:            memberid = values.get(0);
124:        System.out.println("matching member id:-->" + memberid);
125:        return memberid;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/service/MemberCache.java
-- Search Results --> 

9:package com.xerox.he.member.common.service;
16:public interface MemberCache {
18:    public void isMemberIdValid(String memberId) throws ForbiddenException;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/service/MemberCacheManagerImpl.java
-- Search Results --> 

9:package com.xerox.he.member.common.service;
20:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
22:import com.xerox.he.member.support.service.MemberSupportServices;
29:public class MemberCacheManagerImpl implements MemberCache {
34:    private MemberSupportServices memberSupportServices;
36:    private static final String MEMBER_CACHE_NAME = "memberCache";
41:     * @see com.xerox.he.member.common.service.MemberCache#isMemberIdValid(java.lang.Long)
44:    public void isMemberIdValid(String memberId) throws ForbiddenException {
54:        if(StringUtils.isBlank(memberId)){
57:        Long memberIdIong = null;
60:          memberIdIong = Long.parseLong(memberId);
62:            throw new ForbiddenException("member id not a number");
64:        // From the cache manager get the member cache as of now, cache manager has only 1 cache
65:        Cache cache = cacheManager.getCache(MEMBER_CACHE_NAME);
67:        // Check whether member SysId is already stored in cache for the logged in username
68:        // if not call store to populate the member ID in cache
71:                storeMemberIdInCache(loggedInUserName);
72:            } catch (MemberSupportBusinessException e) {
74:                    "Exception in MemberCacheManagerImpl.isMemberIdValid method",
78:            // If cache has the store for logged in user name get the object and check whether the member Id matches
82:                Long memberIdFromCache = (Long) result;
83:                // If the member ID passed and member ID what is stored in cache for logged in user name
85:                // user is not entitled to see other member data
86:                if (!memberIdFromCache.equals(memberIdIong)) {
88:                        + " is not linked to this member");
92:                    "Member ID is null in MemberCacheManagerImpl.isMemberIdValid method ");
97:    private void storeMemberIdInCache(String loggedInUserName)
98:        throws MemberSupportBusinessException {
100:        // Get the member details using user name
101:        Long memberSysId =
102:            memberSupportServices.getMemberSysId(loggedInUserName);
104:        if (memberSysId == null) {
106:                "could not find member details  for username: "
111:        Cache cache = cacheManager.getCache(MEMBER_CACHE_NAME);
113:        // Key is logged in username and value is memberId
114:        cache.putIfAbsent(loggedInUserName, memberSysId);
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/validator/AddressVaidator.java
-- Search Results --> 

9:package com.xerox.he.member.common.validator;
21:import com.xerox.he.member.common.vo.AddressViewVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/validator/ValidateAddress.java
-- Search Results --> 

9:package com.xerox.he.member.common.validator;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/vo/AddressViewVO.java
-- Search Results --> 

6:package com.xerox.he.member.common.vo;
11:import com.xerox.he.member.common.validator.ValidateAddress;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/vo/EnterpriseBaseSearchCriteriaVO.java
-- Search Results --> 

9:package com.xerox.he.member.common.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/vo/EnterpriseSearchResultsVO.java
-- Search Results --> 

9:package com.xerox.he.member.common.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/vo/LineItemVO.java
-- Search Results --> 

9:package com.xerox.he.member.common.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/vo/MemberVO.java
-- Search Results --> 

9:package com.xerox.he.member.common.vo;
16:@JsonRootName("Member")
17:public class MemberVO {
27:    public MemberVO() {}
29:    public MemberVO(NameVO memberName, String dateOfBirth, String memberGender) {
30:        name = memberName;
32:        gender = memberGender;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/common/vo/NameVO.java
-- Search Results --> 

9:package com.xerox.he.member.common.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/mapper/AddressViewDOMapper.java
-- Search Results --> 

1:package com.xerox.he.member.healthcareprovider.mapper;
8:import com.xerox.he.member.common.vo.AddressViewVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/mapper/HealthCareProviderDOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.mapper;
19:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchResultsVO;
21:import com.xerox.he.member.common.mapper.DOMapperWithArgs;
22:import com.xerox.he.member.common.vo.AddressViewVO;
23:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchResultsVO;
24:import com.xerox.he.member.referencedata.service.ReferenceDataService;
55:     * @param memberAddress
61:        com.acs.enterprise.common.program.commonentities.common.domain.Address memberAddress,
84:        } else if (memberAddress != null) {
85:            String sourStAddress = memberAddress.getAddressLine1();
86:            String sourCity = memberAddress.getCityName();
87:            String sourState = memberAddress.getStateCode();
88:            String sourZip = memberAddress.getZipCode5();
89:            String sourCountry = memberAddress.getCountryCode();
115:     * @see com.xerox.he.member.common.mapper.DOMapperWithArgs#mapDOToVO(java.lang.Object, java.lang.Object[])
121:        com.acs.enterprise.common.program.commonentities.common.domain.Address memberAddress =
138:                    .getLongDescription("Member", "P_TY_CD1",
155:                    healthCareProviderVO.getAddress(), memberAddress,
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/mapper/HealthCareProviderMapper.java
-- Search Results --> 

1:package com.xerox.he.member.healthcareprovider.mapper;
11:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchResultsVO;
12:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchVO;
14:import com.xerox.he.member.common.mapper.DOMapperWithArgs;
15:import com.xerox.he.member.common.vo.AddressViewVO;
16:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchVO;
17:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchResultsVO;
18:import com.xerox.he.member.referencedata.service.ReferenceDataService;
43:     * @param memberAddress
49:        com.acs.enterprise.common.program.commonentities.common.domain.Address memberAddress,
72:        } else if (memberAddress != null) {
73:            String sourStAddress = memberAddress.getAddressLine1();
74:            String sourCity = memberAddress.getCityName();
75:            String sourState = memberAddress.getStateCode();
76:            String sourZip = memberAddress.getZipCode5();
77:            String sourCountry = memberAddress.getCountryCode();
103:     * @see com.xerox.he.member.common.mapper.DOMapperWithArgs#mapDOToVO(java.lang.Object, java.lang.Object[])
109:        com.acs.enterprise.common.program.commonentities.common.domain.Address memberAddress =
127:                    .getLongDescription("Member", "P_TY_CD1",
156:                    healthCareProviderVO.getAddress(), memberAddress,
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/mapper/HealthCareProviderVOMapper.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.mapper;
17:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchVO;
19:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/rest/HealthCareProviderResource.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.rest;
19:import com.xerox.he.member.common.vo.EnterpriseSearchResultsVO;
20:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchResultsVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/rest/HealthCareProviderResourceImpl.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.rest;
24:import com.acs.enterprise.mmis.member.common.application.exception.MemberBusinessException;
25:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
26:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchResultsVO;
27:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchVO;
32:import com.xerox.he.member.common.mapper.DOMapperWithArgs;
33:import com.xerox.he.member.common.service.MemberCache;
34:import com.xerox.he.member.common.vo.AddressViewVO;
35:import com.xerox.he.member.common.vo.EnterpriseSearchResultsVO;
36:import com.xerox.he.member.healthcareprovider.service.HealthCareProviderDetails;
37:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchResultsVO;
38:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchVO;
39:import com.xerox.he.member.support.service.MemberSupportServices;
72:    private MemberSupportServices memberSupportServices;
75:    private MemberCache memberCache;
81:     * @see com.xerox.he.member.healthcareprovider.rest.HealthCareProviderResource#searchHealthCareProvider(com.xerox.he.member.healthcareprovider.vo.HealthCareProviderSearch1)
91:        com.acs.enterprise.common.program.commonentities.common.domain.Address memberAddress =
96:        String memberSysId = healthProviderSearchVO.getMemberId();
102:            if (StringUtils.isNotBlank(memberSysId)) {
103:                memberCache.isMemberIdValid(memberSysId);
104:                memberAddress =
105:                    memberSupportServices.getMemberAddress(Long
106:                        .parseLong(memberSysId));
107:                providerSearchVO.setMbrSysID(Long.parseLong(memberSysId));
110:            if (null != memberAddress) {
111:                if (null != memberAddress.getLatitudeNumber()) {
112:                    providerSearchVO.setMemLat(memberAddress
115:                if (null != memberAddress.getLongitudeNumber()) {
116:                    providerSearchVO.setMemLon(memberAddress
124:        } catch (MemberSupportBusinessException e) {
127:        } catch (MemberBusinessException e) {
142:                memberAddress, healthProviderSearchVO.getAddress());
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/service/HealthCareProviderDetails.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.service;
13:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
14:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchResultsVO;
15:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchVO;
24:        throws MemberSupportBusinessException;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/service/HealthCareProviderDetailsImpl.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.service;
17:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
18:import com.acs.enterprise.mmis.member.support.common.delegate.MemberSupportDelegate;
19:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchResultsVO;
20:import com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchVO;
29:    private MemberSupportDelegate memberSupportDelegate;
34:     * @throws MemberSupportBusinessException
35:     * @see com.xerox.he.member.healthcareprovider.service.HealthCareProviderDetails#searchHealthCareProvider(com.acs.enterprise.mmis.member.support.selfservices.view.vo.HealthCareProviderSearchVO)
41:        throws MemberSupportBusinessException {
44:        return memberSupportDelegate
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/validator/HealthCareProviderValidator.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.validator;
21:import com.xerox.he.member.healthcareprovider.vo.HealthProviderSearchVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/validator/ValidateHealthCareProvider.java
-- Search Results --> 

9:package com.xerox.he.member.healthcareprovider.validator;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/vo/HealthProviderSearchResultsVO.java
-- Search Results --> 

4:package com.xerox.he.member.healthcareprovider.vo;
7:import com.xerox.he.member.common.vo.AddressViewVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/healthcareprovider/vo/HealthProviderSearchVO.java
-- Search Results --> 

1:package com.xerox.he.member.healthcareprovider.vo;
6:import com.xerox.he.member.common.vo.AddressViewVO;
7:import com.xerox.he.member.common.vo.EnterpriseBaseSearchCriteriaVO;
8:import com.xerox.he.member.healthcareprovider.validator.ValidateHealthCareProvider;
100:    private String memberId;
191:     * @return the memberId
193:    public String getMemberId() {
194:        return memberId;
198:     * @param memberId the memberId to set
200:    public void setMemberId(String memberId) {
201:        this.memberId = memberId;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/referencedata/service/ReferenceDataService.java
-- Search Results --> 

9:package com.xerox.he.member.referencedata.service;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/referencedata/service/ReferenceDataServiceImpl.java
-- Search Results --> 

9:package com.xerox.he.member.referencedata.service;
119:     * @see com.xerox.he.member.referencedata.service.ReferenceDataService#setLongDescription(java.lang.String,
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/rest/MemberSupportResource.java
-- Search Results --> 

9:package com.xerox.he.member.support.rest;
21:import com.xerox.he.member.common.vo.MemberVO;
22:import com.xerox.he.member.support.vo.ChangePinRequestVO;
23:import com.xerox.he.member.support.vo.ChangePinResponseVO;
24:import com.xerox.he.member.support.vo.MemberLoginRequestVO;
25:import com.xerox.he.member.support.vo.MemberLoginResponseVO;
26:import com.xerox.he.member.support.vo.NewPinRequestVO;
27:import com.xerox.he.member.support.vo.NewPinResponseVO;
33:public interface MemberSupportResource {
53:    public MemberLoginResponseVO loginMember(MemberLoginRequestVO request)
60:    public MemberVO getMemberDetails(@PathParam("loginid") String memberid)
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/rest/MemberSupportResourceImpl.java
-- Search Results --> 

9:package com.xerox.he.member.support.rest;
25:import com.acs.enterprise.mmis.member.common.application.exception.MemberBusinessException;
26:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
27:import com.acs.enterprise.mmis.member.common.vo.MemberBasicInfo;
34:import com.xerox.he.member.common.vo.MemberVO;
35:import com.xerox.he.member.support.service.MemberSupportServices;
36:import com.xerox.he.member.support.vo.ChangePinRequestVO;
37:import com.xerox.he.member.support.vo.ChangePinResponseVO;
38:import com.xerox.he.member.support.vo.MemberLoginRequestVO;
39:import com.xerox.he.member.support.vo.MemberLoginResponseVO;
40:import com.xerox.he.member.support.vo.NewPinRequestVO;
41:import com.xerox.he.member.support.vo.NewPinResponseVO;
46:@Named("memberSupportRestService")
48:public class MemberSupportResourceImpl implements MemberSupportResource {
53:    private MemberSupportServices memberSupportServices;
56:    @Named("memberDOMapper")
57:    DOMapper<MemberBasicInfo, MemberVO> memberDOMapper;
60:        .getLogger(MemberSupportResourceImpl.class.getName());
67:     * @see com.xerox.he.member.support.rest.MemberSupportResource#requestNewPin(com.xerox.he.member.support.vo.NewPinRequestVO)
77:                memberSupportServices.requestNewPin(request.getMemberId());
111:                        "error.security.unable.to.unlock.member.account");
133:     * @see com.xerox.he.member.support.rest.MemberSupportResource#changePin(com.xerox.he.member.support.vo.ChangePinRequestVO)
150:                memberSupportServices.changePin(Long.parseLong(request
205:     * @see com.xerox.he.member.support.rest.MemberSupportResource#loginMember(com.xerox.he.member.support.vo.MemberLoginRequestVO)
208:    public MemberLoginResponseVO loginMember(MemberLoginRequestVO request)
211:        log.debug("Authenticating the member..." + request.getMemberId());
213:        String memberLoginId = request.getMemberId();
214:        boolean validMemberId = false;
218:        MemberLoginResponseVO response = null;
220:            validMemberId =
221:                memberSupportServices.isValidMemberLoginId(memberLoginId);
223:            if (validMemberId) {
227:                    memberSupportServices.validatePIN(secPIN, memberLoginId);
231:                        memberSupportServices.validateMember(memberLoginId,
235:                    MemberVO memberDetails = getMemberDetails(memberLoginId);
240:                            new MemberLoginResponseVO("pin_expired",
241:                                "the pin has expires", memberDetails);
243:                        log.debug("User's account " + memberLoginId
246:                            "error.memberlogin.accountlocked");
248:                        log.debug("memberid " + memberLoginId + " is Inactive.");
250:                            "error.memberlogin.inactive");
253:                        log.debug("<MemberLoginResponseHandlerServlet> doPost(): "
262:                                new MemberLoginResponseVO(
265:                                    memberDetails);
268:                            memberSupportServices.updateSession(
269:                                generateUniqueID(), memberLoginId);
272:                                    new MemberLoginResponseVO(
274:                                        "Pin will expire soon", memberDetails);
277:                                    new MemberLoginResponseVO("login_success",
278:                                        "logged in successfully", memberDetails);
289:                        "error.memberlogin.invalidpin");
294:                    "error.memberlogin.invalidmemberid");
316:    public MemberVO getMemberDetails(String memberId)
319:        MemberBasicInfo memberBasicInfo;
320:        // memberCache.isMemberIdValid(memberId);
325:        if (StringUtils.isBlank(memberId)
326:            || !memberId.equalsIgnoreCase(loginName)) {
327:            throw new ForbiddenException("member id and login id do not match");
331:            memberBasicInfo = memberSupportServices.getMemberDetails(memberId);
332:        } catch (MemberSupportBusinessException | MemberBusinessException e) {
338:        return memberDOMapper.mapDOToVO(memberBasicInfo);
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/service/MemberSupportServiceImpl.java
-- Search Results --> 

9:package com.xerox.he.member.support.service;
35:import com.acs.enterprise.mmis.member.common.application.exception.MemberBusinessException;
36:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
37:import com.acs.enterprise.mmis.member.common.domain.Member;
38:import com.acs.enterprise.mmis.member.common.vo.MemberBasicInfo;
39:import com.acs.enterprise.mmis.member.common.vo.MemberInformationRequestVO;
40:import com.acs.enterprise.mmis.member.information.common.delegate.MemberInformationDelegate;
41:import com.acs.enterprise.mmis.member.support.common.delegate.MemberSupportDelegate;
48:public class MemberSupportServiceImpl implements MemberSupportServices {
51:		        .getLogger(MemberSupportServiceImpl.class.getName());
57:    private MemberSupportDelegate memberSupportDelegate;
60:    private MemberInformationDelegate memberInformationDelegate;
67:     * @see com.xerox.he.member.support.service.MemberSupportServices#requestNewPin(com.xerox.he.member.support.vo.NewPinRequestVO)
70:    public String requestNewPin(String memberId) throws UserUIException,
73:        return pinManagementDelegate.resetPin(memberId, null);
81:     * @see com.xerox.he.member.support.service.MemberSupportServices#changePin(com.xerox.he.member.support.vo.ChangePinRequestVO)
84:    public boolean changePin(Long oldPIN, Long newPin, String memberId)
86:        return pinManagementDelegate.changePINMember(oldPIN, newPin, memberId);
90:    public Long getMemberSysId(String memberId)
91:        throws MemberSupportBusinessException {
92:        log.debug("get the sysid for " + memberId);
93:        Long memberSysId = null;
94:        if (StringUtils.isNotBlank(memberId)) {
95:            memberSysId =
96:                memberSupportDelegate.getMemberSysIdForAltId(memberId, "MID");
97:            log.debug("memberSysId---" + memberSysId);
99:        return memberSysId;
105:     * @throws MemberBusinessException
107:     * @see com.xerox.he.member.support.service.MemberSupportServices#getMemberAddress(java.lang.Long)
110:    public Address getMemberAddress(Long memberSysId)
111:        throws MemberSupportBusinessException, MemberBusinessException,
114:        MemberInformationRequestVO memberInformationRequestVO =
115:            new MemberInformationRequestVO();
116:        Member member = null;
118:        if (memberSysId != null) {
119:            memberInformationRequestVO.setMemberSysID(memberSysId);
120:            member =
121:                memberInformationDelegate
122:                    .getMemberDetails(memberInformationRequestVO);
123:            if (member != null) {
125:                    memberSupportDelegate.getAddressWithCommonSkForSUP(member
137:     * @see com.xerox.he.member.support.service.MemberSupportServices#validateMemberAddress(com.xerox.he.member.common.vo.AddressVO)
140:    public AddressResponseVO validateMemberAddress(AddressRequestVO addReqVO) {
186:     * @see com.xerox.he.member.support.service.MemberSupportServices#isValidMemberLoginId(java.lang.String)
189:    public boolean isValidMemberLoginId(String memberId) throws UserUIException,
191:        return pinManagementDelegate.isValidMemberId(memberId);
199:     * @see com.xerox.he.member.support.service.MemberSupportServices#validatePIN(com.acs.enterprise.common.security.common.domain.SecurityPIN,
203:    public boolean validatePIN(SecurityPIN securityPIN, String memberId)
205:        return pinManagementDelegate.validatePIN(securityPIN, memberId);
213:     * @see com.xerox.he.member.support.service.MemberSupportServices#validateMember(java.lang.String, boolean)
216:    public String validateMember(String memberId, boolean flag)
218:        return pinManagementDelegate.validateMember(memberId, flag);
226:     * @see com.xerox.he.member.support.service.MemberSupportServices#getMemberActiveSession(java.lang.String)
229:    public boolean getMemberActiveSession(String memberId)
231:        return pinManagementDelegate.getMemberActiveSession(memberId);
239:     * @see com.xerox.he.member.support.service.MemberSupportServices#updateSession(java.lang.String, java.lang.String)
242:    public void updateSession(String sessionId, String memberId)
244:        pinManagementDelegate.updateSession(sessionId, memberId);
250:     * @throws MemberSupportBusinessException
251:     * @throws MemberBusinessException
252:     * @see com.xerox.he.member.support.service.MemberSupportServices#getMemberDetails(java.lang.String)
255:    public MemberBasicInfo getMemberDetails(String memberId)
256:        throws MemberSupportBusinessException, MemberBusinessException {
258:        Long memberSysId = getMemberSysId(memberId);
260:        MemberBasicInfo memberBasicInfo =  memberInformationDelegate.getMemberBasicInformation(memberSysId);
261:        memberBasicInfo.setMemSysID(memberSysId);
262:        return memberBasicInfo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/service/MemberSupportServices.java
-- Search Results --> 

9:package com.xerox.he.member.support.service;
19:import com.acs.enterprise.mmis.member.common.application.exception.MemberBusinessException;
20:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
21:import com.acs.enterprise.mmis.member.common.vo.MemberBasicInfo;
26:public interface MemberSupportServices {
32:    public String requestNewPin(String memberId) throws UserUIException,
39:    public boolean changePin(Long oldPIN, Long newPin, String memberId)
42:    public Long getMemberSysId(String memberId)
43:        throws MemberSupportBusinessException;
45:    public Address getMemberAddress(Long memberSysId)
46:        throws MemberSupportBusinessException, MemberBusinessException,
49:    public AddressResponseVO validateMemberAddress(AddressRequestVO addReqVO);
52:     * @param submittedMemberId
57:    public boolean isValidMemberLoginId(String memberId) throws UserUIException,
62:     * @param submittedMemberId
67:    public boolean validatePIN(SecurityPIN securityPIN, String memberId)
71:     * @param submittedMemberId
77:    public String validateMember(String memberId, boolean flag)
81:     * @param submittedMemberId
86:    public boolean getMemberActiveSession(String memberId)
91:     * @param submittedMemberId
95:    public void updateSession(String sessionId, String memberId)
98:    public MemberBasicInfo getMemberDetails(String memberId)
99:        throws MemberSupportBusinessException, MemberBusinessException;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/validator/MemberSupportValidator.java
-- Search Results --> 

9:package com.xerox.he.member.support.validator;
20:import com.xerox.he.member.support.vo.ChangePinRequestVO;
21:import com.xerox.he.member.support.vo.NewPinRequestVO;
27:public class MemberSupportValidator implements
28:    ConstraintValidator<ValidateMemberSupport, Object> {
29:    private Logger log = LoggerFactory.getLogger(MemberSupportValidator.class
40:    public void initialize(ValidateMemberSupport arg0) {
148:        if (StringUtils.isBlank(request.getMemberId()))
153:                    "error.msg.memberId.isMandatory")
154:                .addPropertyNode("memberId").addConstraintViolation();
160:        if (StringUtils.isBlank(request.getReeenterMemberId()))
165:                    "error.msg.confirmMemberId.isMandatory")
166:                .addPropertyNode("memberId").addConstraintViolation();
171:        if (!(request.getMemberId()).equals(request.getReeenterMemberId()))
176:                .addPropertyNode("memberId").addConstraintViolation();
181:        if (request.getMemberId() != null) {
183:                Long.parseLong(request.getMemberId().trim());
184:                Long.parseLong(request.getReeenterMemberId().trim());
188:                        "error.msg.memberid.notformat")
189:                    .addPropertyNode("memberIdnotlong")
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/validator/ValidateMemberSupport.java
-- Search Results --> 

9:package com.xerox.he.member.support.validator;
26:@Constraint(validatedBy = MemberSupportValidator.class)
28:public @interface ValidateMemberSupport {
43:        ValidateMemberSupport[] value();
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/vo/ChangePinRequestVO.java
-- Search Results --> 

9:package com.xerox.he.member.support.vo;
12:import com.xerox.he.member.support.validator.ValidateMemberSupport;
18:@ValidateMemberSupport(requestType = "changePin")
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/vo/ChangePinResponseVO.java
-- Search Results --> 

9:package com.xerox.he.member.support.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/vo/MemberLoginRequestVO.java
-- Search Results --> 

9:package com.xerox.he.member.support.vo;
16:@JsonRootName("MemberLoginReques")
17:public class MemberLoginRequestVO {
18:    private String memberId;
23:     * @return the memberId
25:    public String getMemberId() {
26:        return memberId;
30:     * @param memberId the memberId to set
32:    public void setMemberId(String memberId) {
33:        this.memberId = memberId;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/vo/MemberLoginResponseVO.java
-- Search Results --> 

9:package com.xerox.he.member.support.vo;
12:import com.xerox.he.member.common.vo.MemberVO;
17:@JsonRootName("MemberLoginResponse")
18:public class MemberLoginResponseVO {
20:    private MemberVO member;
30:    public MemberLoginResponseVO(String code, String message) {
39:    public MemberLoginResponseVO(String code, String message, MemberVO memberDetail) {
42:        member = memberDetail;
74:     * @return the member
76:    public MemberVO getMember() {
77:        return member;
81:     * @param member the member to set
83:    public void setMember(MemberVO member) {
84:        this.member = member;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/vo/NewPinRequestVO.java
-- Search Results --> 

9:package com.xerox.he.member.support.vo;
12:import com.xerox.he.member.support.validator.ValidateMemberSupport;
18:@ValidateMemberSupport(requestType = "newPin")
22:    private String memberId;
24:    private String reeenterMemberId;
26:    public String getMemberId() {
27:        return memberId;
30:    public void setMemberId(String memberId) {
31:        this.memberId = memberId;
34:    public String getReeenterMemberId() {
35:        return reeenterMemberId;
38:    public void setReeenterMemberId(String reeenterMemberId) {
39:        this.reeenterMemberId = reeenterMemberId;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./MemberServices/src/main/java/com/xerox/he/member/support/vo/NewPinResponseVO.java
-- Search Results --> 

9:package com.xerox.he.member.support.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/helper/EligibilitySearchHelper.java
-- Search Results --> 

9:package com.xerox.he.provider.checkmembereligibility.helper;
20:import com.acs.enterprise.mmis.member.common.vo.MemberTPLSpanSummaryVO;
23:import com.xerox.he.provider.checkmembereligibility.vo.MemberDetailVO;
39:	 * @param member
40:	 *            MemberDetailVO
43:	public void handleDisplayFormatForDateSearchCriteria(MemberDetailVO member) {
44:		if (member != null) {
45:			member.setStrDateOfBirth(ProviderUtil.splitString(member
47:			member.setStrServiceFromDate(ProviderUtil.splitString(member
49:			member.setStrServiceToDate(ProviderUtil.splitString(member
59:	 * @param member
60:	 *            MemberDetailVO
64:			MemberDetailVO member) {
65:		if (member.getStrServiceFromDate() == null
66:				|| member.getStrServiceFromDate().trim().isEmpty()) {
67:			member.setStrServiceFromDate(ProviderUtil.date2String(new Date()));
69:		if (member.getStrServiceToDate() == null
70:				|| member.getStrServiceToDate().trim().isEmpty()) {
71:			member.setStrServiceToDate(ProviderUtil.date2String(new Date()));
73:		trimMemberSearchCriteria(member);
77:	 * Removes extra spaces from the member details
80:	 * @param memberDetailVO MemberDetailVO
82:	private void trimMemberSearchCriteria(MemberDetailVO memberDetailVO) {
83:		if (memberDetailVO != null) {
84:			memberDetailVO.setMemberID(StringUtils.trim(memberDetailVO
85:					.getMemberID()));
86:			memberDetailVO.setLastName(StringUtils.trim(memberDetailVO
88:			memberDetailVO.setFirstName(StringUtils.trim(memberDetailVO
90:			memberDetailVO.setGender(StringUtils.trim(memberDetailVO
92:			memberDetailVO.setStrDateOfBirth(StringUtils.trim(memberDetailVO
94:			memberDetailVO.setStrServiceFromDate(StringUtils
95:					.trim(memberDetailVO.getStrServiceFromDate()));
96:			memberDetailVO.setStrServiceToDate(StringUtils.trim(memberDetailVO
110:	public List<MemberTPLSpanSummaryVO> formatDisplayNamesForTPLSpans(
111:			List<MemberTPLSpanSummaryVO> tplSpansList) {
115:			for (MemberTPLSpanSummaryVO memberTPLSpanSummaryVO : tplSpansList) {
116:				LOGGER.debug("5010 : memberTPLSpanSummaryVO.getLastName() : "
117:						+ memberTPLSpanSummaryVO.getLastName());
118:				LOGGER.debug("5010 : memberTPLSpanSummaryVO.getFirstName() : "
119:						+ memberTPLSpanSummaryVO.getFirstName());
120:				strLastName = memberTPLSpanSummaryVO.getLastName();
122:					strFirstName = memberTPLSpanSummaryVO.getFirstName();
129:					memberTPLSpanSummaryVO.setLastName(strLastName);
131:					memberTPLSpanSummaryVO.setLastName(memberTPLSpanSummaryVO
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/BenifitPlanVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
5:import com.acs.enterprise.mmis.member.common.vo.ExternalEnrollmentVo;
7:import com.xerox.he.provider.checkmembereligibility.vo.BenifitPlanVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/EligibilityStatusVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
5:import com.acs.enterprise.mmis.member.common.domain.EligibilitySpan;
7:import com.xerox.he.provider.checkmembereligibility.vo.EligibilityStatusVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/MedicareVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
5:import com.acs.enterprise.mmis.member.common.domain.MedicareSpan;
7:import com.xerox.he.provider.checkmembereligibility.vo.MedicareVO;
52:			medicareVO.setPolicyHolderName(medicareSpan.getMember()
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/MemberConfirmationDetailsVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
5:import com.acs.enterprise.mmis.member.common.vo.MemberVerificationDetailsVO;
7:import com.xerox.he.provider.checkmembereligibility.vo.MemberConfirmationDetailsVO;
10: * File name: MemberConfirmationDetailsVOMapper.java History:
16:public class MemberConfirmationDetailsVOMapper implements
17:		DOMapper<MemberVerificationDetailsVO, MemberConfirmationDetailsVO> {
21:	 * @param memVerificationDetailsVO MemberVerificationDetailsVO
22:	 * @return MemberConfirmationDetailsVO
25:	public MemberConfirmationDetailsVO mapDOToVO(
26:			MemberVerificationDetailsVO memVerificationDetailsVO) {
27:		MemberConfirmationDetailsVO memberConfirmationDetailsVO = new MemberConfirmationDetailsVO();
29:			memberConfirmationDetailsVO.setLastName(memVerificationDetailsVO
30:					.getMemberVO().getDemographicInformation().getName()
32:			memberConfirmationDetailsVO.setFirstName(memVerificationDetailsVO
33:					.getMemberVO().getDemographicInformation().getName()
35:			memberConfirmationDetailsVO.setMi(memVerificationDetailsVO
36:					.getMemberVO().getDemographicInformation().getName()
38:			memberConfirmationDetailsVO.setSuffix(memVerificationDetailsVO
39:					.getMemberVO().getDemographicInformation().getName()
41:			memberConfirmationDetailsVO
42:					.setDob(memVerificationDetailsVO.getMemberVO()
44:			memberConfirmationDetailsVO.setMemberId(memVerificationDetailsVO
45:					.getMemberVO().getCurrAltID());
46:			memberConfirmationDetailsVO.setStreet(memVerificationDetailsVO
48:			memberConfirmationDetailsVO.setPoBox("");
49:			memberConfirmationDetailsVO.setCity(memVerificationDetailsVO
51:			memberConfirmationDetailsVO.setState(memVerificationDetailsVO
53:			memberConfirmationDetailsVO.setZip(memVerificationDetailsVO
55:			return memberConfirmationDetailsVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/MemberDetailVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
5:import com.acs.enterprise.mmis.member.common.helper.MemberConstants;
6:import com.acs.enterprise.mmis.member.common.vo.MemberInformationRequestVO;
10:import com.xerox.he.provider.checkmembereligibility.vo.MemberDetailVO;
13: * File name: MemberDetailVOMapper.java History:
19:public class MemberDetailVOMapper implements VOMapper<MemberDetailVO,MemberInformationRequestVO> {
23:	 * @param member MemberDetailVO
24:	 * @return MemberInformationRequestVO
27:	public MemberInformationRequestVO mapVOToDO(MemberDetailVO member) {
28:		MemberInformationRequestVO memberInformationRequestVO = new MemberInformationRequestVO();
29:		memberInformationRequestVO.setAltID(member.getMemberID());
30:		memberInformationRequestVO
32:		memberInformationRequestVO.setBeginDate(ProviderUtil.string2Date(member
34:		memberInformationRequestVO.setEndDate(ProviderUtil.string2Date(member
36:		memberInformationRequestVO
37:				.setSourceOfRequest(MemberConstants.INBOUND_ELIGIBLITY_REQUEST_CODE_PWEB);
39:		memberInformationRequestVO.setProviderAltID(member.getProviderID());
41:		memberInformationRequestVO.setLobCode(MemberConstants.MED_LOBCODE);
42:		memberInformationRequestVO.setTplSpansRequired(true);
43:		memberInformationRequestVO.setEligibilitySpansRequired(true);
44:		memberInformationRequestVO.setCommonReviewRequired(true);
45:		memberInformationRequestVO.setLockinSpansRequired(true);
47:		memberInformationRequestVO.setLastName(member.getLastName());
48:		memberInformationRequestVO.setFirstName(member.getFirstName());
50:		memberInformationRequestVO.setGender(member.getGender());
51:		memberInformationRequestVO.setDob(ProviderUtil
52:				.convertStringToDate(member.getStrDateOfBirth()));
54:		return memberInformationRequestVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/MemberServiceDetailsVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
5:import com.acs.enterprise.mmis.member.common.vo.MemberVerificationDetailsVO;
7:import com.xerox.he.provider.checkmembereligibility.vo.MemberServiceDetailsVO;
9: * File name: MemberServiceDetailsVOMapper.java History:
15:public class MemberServiceDetailsVOMapper implements
16:		DOMapper<MemberVerificationDetailsVO,MemberServiceDetailsVO> {
20:	 * @param memVerificationDetailsVO MemberVerificationDetailsVO
21:	 * @return MemberServiceDetailsVO
24:	public MemberServiceDetailsVO mapDOToVO(
25:			MemberVerificationDetailsVO memVerificationDetailsVO) {
27:			MemberServiceDetailsVO memberServiceDetailsVO = new MemberServiceDetailsVO();
28:			memberServiceDetailsVO.setServiceFrom(memVerificationDetailsVO
30:			memberServiceDetailsVO.setServiceTo(memVerificationDetailsVO
32:			memberServiceDetailsVO.setConfNumber(Long
37:			return memberServiceDetailsVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/MemberVerificationDetailsVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
10:import com.acs.enterprise.mmis.member.common.domain.EligibilitySpan;
11:import com.acs.enterprise.mmis.member.common.vo.MemberVerificationDetailsVO;
14:import com.xerox.he.provider.checkmembereligibility.vo.MemberDetailVO;
17: * File name: MemberVerificationDetailsVOMapper.java History:
24:public class MemberVerificationDetailsVOMapper implements
25:		DOMapper<MemberVerificationDetailsVO,MemberDetailVO> {
29:	 * @param memVerificationDetailsVO MemberVerificationDetailsVO
30:	 * @return MemberDetailVO
33:	public MemberDetailVO mapDOToVO(
34:			MemberVerificationDetailsVO memVerificationDetailsVO) {
35:		MemberDetailVO member = new MemberDetailVO();
40:		if (memVerificationDetailsVO.getMemberVO() != null) {
42:			member.setMemberID(memVerificationDetailsVO.getMemberVO()
45:			member.setStrServiceFromDate(memVerificationDetailsVO
47:			member.setStrServiceToDate(memVerificationDetailsVO
54:			if (memVerificationDetailsVO.getMemberVO()
56:					&& memVerificationDetailsVO.getMemberVO()
59:				member.setFirstName(memVerificationDetailsVO.getMemberVO()
61:				member.setLastName(memVerificationDetailsVO.getMemberVO()
63:				member.setGender(memVerificationDetailsVO.getMemberVO()
66:				if (memVerificationDetailsVO.getMemberVO()
68:					member.setStrDateOfBirth(dateFormatter
69:							.format(memVerificationDetailsVO.getMemberVO()
81:				member.setTpl(HEConstants.PRV_YES);
84:				member.setTpl(HEConstants.PRV_NO);
87:			return member;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/mapper/TplVOMapper.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.mapper;
5:import com.acs.enterprise.mmis.member.common.vo.MemberTPLSpanSummaryVO;
7:import com.xerox.he.provider.checkmembereligibility.vo.TplVO;
16:public class TplVOMapper implements DOMapper<MemberTPLSpanSummaryVO, TplVO> {
20:	 * @param memberTPLSpanSummaryVO MemberTPLSpanSummaryVO
24:	public TplVO mapDOToVO(MemberTPLSpanSummaryVO memberTPLSpanSummaryVO) {
26:		if (memberTPLSpanSummaryVO != null) {
27:			tplVO.setCarrierId(memberTPLSpanSummaryVO.getCarrierID());
28:			tplVO.setCarrierName(memberTPLSpanSummaryVO.getCarrierName());
29:			tplVO.setPolicyHolderId(memberTPLSpanSummaryVO.getPolicyHolderID());
30:			tplVO.setPolicyHolderName(memberTPLSpanSummaryVO.getLastName()
32:			tplVO.setPolicyNo(memberTPLSpanSummaryVO.getPolicyNumber());
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/rest/ProviderCheckEligibilityRestService.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.rest;
25:     * Method searchEligibleMembers.
27:     * @param memberDetailVO String
33:    @Path("member/eligibility/")
35:    public EnterpriseServiceResponseVO searchEligibleMembers(
36:        @QueryParam("filters") final String memberDetailVO)
40:     * Method retrieveEligibleMembersDetails.
42:     * @param memberid String
43:     * @param memberDetailVO String
48:    @Path("member/{memberid}/eligibility/")
50:    public EnterpriseServiceResponseVO retrieveEligibleMembersDetails(
51:        @PathParam("memberid") final String memberid,
52:        @QueryParam("filters") final String memberDetailVO)
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/rest/ProviderCheckEligibilityRestServiceImpl.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.rest;
15:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
16:import com.acs.enterprise.mmis.member.common.domain.EligibilitySpan;
17:import com.acs.enterprise.mmis.member.common.domain.MedicareSpan;
18:import com.acs.enterprise.mmis.member.common.vo.ExternalEnrollmentVo;
19:import com.acs.enterprise.mmis.member.common.vo.MemberInformationRequestVO;
20:import com.acs.enterprise.mmis.member.common.vo.MemberTPLSpanSummaryVO;
21:import com.acs.enterprise.mmis.member.common.vo.MemberVerificationDetailsVO;
33:import com.xerox.he.provider.checkmembereligibility.helper.EligibilitySearchHelper;
34:import com.xerox.he.provider.checkmembereligibility.service.MemberEligibilityService;
35:import com.xerox.he.provider.checkmembereligibility.vo.BenifitPlanVO;
36:import com.xerox.he.provider.checkmembereligibility.vo.EligibilityStatusVO;
37:import com.xerox.he.provider.checkmembereligibility.vo.MedicareVO;
38:import com.xerox.he.provider.checkmembereligibility.vo.MemberConfirmationDetailsVO;
39:import com.xerox.he.provider.checkmembereligibility.vo.MemberDetailVO;
40:import com.xerox.he.provider.checkmembereligibility.vo.MemberEligibilityDetailsVO;
41:import com.xerox.he.provider.checkmembereligibility.vo.MemberServiceDetailsVO;
42:import com.xerox.he.provider.checkmembereligibility.vo.TplVO;
61:	public MemberEligibilityService memberEligibilityService;
67:	 * @Inject private MemberDetailVOMapper memberDetailVOMapper;
71:	@Named("memberDetailVOMapper")
72:	VOMapper<MemberDetailVO, MemberInformationRequestVO> memberDetailVOMapper;
75:	@Named("memberVerificationDetailsVOMapper")
76:	DOMapper<MemberVerificationDetailsVO, MemberDetailVO> memberVerificationDetailsVOMapper;
79:	@Named("memberServiceDetailsVOMapper")
80:	DOMapper<MemberVerificationDetailsVO, MemberServiceDetailsVO> memberServiceDetailsVOMapper;
83:	@Named("memberConfirmationDetailsVOMapper")
84:	DOMapper<MemberVerificationDetailsVO, MemberConfirmationDetailsVO> memberConfirmationDetailsVOMapper;
100:	DOMapper<MemberTPLSpanSummaryVO, TplVO> tplVOMapper;
109:	 * Method searchEligibleMembers.
110:	 * @param memberDetail String
114:	 * @see com.xerox.he.provider.checkmembereligibility.rest.ProviderCheckEligibilityRestService#searchEligibleMembers(String)
118:	public EnterpriseServiceResponseVO searchEligibleMembers(
119:			final String memberDetail) throws InternalServerException,
122:		MemberDetailVO memberDetailVO = unmarshall(memberDetail,
123:				MemberDetailVO.class);
125:		// Check whether the provider is viewing data for his/her own members,
127:		providerCache.checkIfProviderIdIsValid(Long.valueOf(memberDetailVO
132:					.valueOf(memberDetailVO.getProviderID()));
133:			memberDetailVO.setProviderID(provider.getReportingAlternateID());
139:		validateRequiredFields(memberDetailVO);
142:				.handleDisplayFormatForDateSearchCriteria(memberDetailVO);
144:				.setCurrentDateIfServiceDateEmptyAndTrimCriteria(memberDetailVO);
146:		MemberInformationRequestVO memInformationRequestVO = memberDetailVOMapper
147:				.mapVOToDO(memberDetailVO);
149:		List<MemberVerificationDetailsVO> responseList = memberEligibilityService
150:				.searchEligibleMembers(memInformationRequestVO);
152:		List<MemberDetailVO> list = getMemberSearchResults(responseList);
155:					"he.error.common.invalid.member", null));
165:	 * Method retrieveEligibleMembersDetails.
166:	 * @param memberId String
167:	 * @param memberDetailVO String
170:	 * @see com.xerox.he.provider.checkmembereligibility.rest.ProviderCheckEligibilityRestService#retrieveEligibleMembersDetails(String, String)
174:	public EnterpriseServiceResponseVO retrieveEligibleMembersDetails(
175:			final String memberId, final String memberDetailVO)
178:		MemberDetailVO memberDetailVO1 = unmarshall(memberDetailVO,
179:				MemberDetailVO.class);
181:		// Check whether the provider is viewing data for his/her own members,
183:		providerCache.checkIfProviderIdIsValid(Long.valueOf(memberDetailVO1
188:					.valueOf(memberDetailVO1.getProviderID()));
189:			memberDetailVO1.setProviderID(provider.getReportingAlternateID());
194:		memberDetailVO1.setMemberID(memberId);
197:				.handleDisplayFormatForDateSearchCriteria(memberDetailVO1);
199:				.setCurrentDateIfServiceDateEmptyAndTrimCriteria(memberDetailVO1);
201:		MemberInformationRequestVO memInformationRequestVO = memberDetailVOMapper
202:				.mapVOToDO(memberDetailVO1);
203:		memberValidityCheck(memberDetailVO1.getMemberID());
204:		MemberVerificationDetailsVO memVerificationDetailsVO = memberEligibilityService
205:				.retrieveEligibleMembersDetails(memInformationRequestVO);
207:		MemberEligibilityDetailsVO memberEligibilityDetailsVO = getResult(memVerificationDetailsVO);
209:		enterpriseServiceResponseVO.setData(memberEligibilityDetailsVO);
216:	 * @param memberDetailVO MemberDetailVO
220:	private boolean validateRequiredFields(MemberDetailVO memberDetailVO)
223:		if (memberDetailVO.getMemberID() == null) {
226:		if (memberDetailVO.getStrDateOfBirth() == null) {
229:		if (memberDetailVO.getFirstName() == null) {
232:		if (memberDetailVO.getLastName() == null) {
244:	 * Returns the list of Member Details after Search Operation
251:	private List<MemberDetailVO> getMemberSearchResults(
252:			List<MemberVerificationDetailsVO> responseList) {
253:		List<MemberDetailVO> searchResultList = new ArrayList<MemberDetailVO>();
254:		MemberDetailVO member;
255:		// MemberVerificationDetailsVO memVerificationDetailsVO = null;
258:			for (MemberVerificationDetailsVO memVerificationDetailsVO : responseList) {
260:				member = memberVerificationDetailsVOMapper
262:				if (member != null) {
263:					searchResultList.add(member);
274:	 * @param memVerificationDetailsVO MemberVerificationDetailsVO
275:	 * @return MemberEligibilityDetailsVO
277:	private MemberEligibilityDetailsVO getResult(
278:			MemberVerificationDetailsVO memVerificationDetailsVO) {
279:		MemberEligibilityDetailsVO memberEligibilityDetailsVO = new MemberEligibilityDetailsVO();
280:		// MemberServiceDetailsVO memberServiceDetailsVO = new
281:		// MemberServiceDetailsVO();
285:			MemberServiceDetailsVO memberServiceDetailsVO = memberServiceDetailsVOMapper
287:			memberEligibilityDetailsVO
288:					.setMemberServiceDetailsVO(memberServiceDetailsVO);
289:			MemberConfirmationDetailsVO memberConfirmationDetailsVO = memberConfirmationDetailsVOMapper
291:			memberEligibilityDetailsVO
292:					.setMemberConfirmationDetailsVO(memberConfirmationDetailsVO);
303:			memberEligibilityDetailsVO
320:			memberEligibilityDetailsVO.setBenifitPlanVO(benifitPlanVOList);
336:				memberEligibilityDetailsVO.setMedicareVO(medicareVOList);
340:			List<MemberTPLSpanSummaryVO> tplDetails = memVerificationDetailsVO
345:				for (MemberTPLSpanSummaryVO memberTPLSpanSummaryVO : tplDetails) {
359:								&& memberTPLSpanSummaryVO.getPolicyBeginDate() != null
361:								&& memberTPLSpanSummaryVO.getPolicyBeginDate()
363:							memberTPLSpanSummaryVO
377:								&& memberTPLSpanSummaryVO.getPolicyEndDate() != null
379:								&& memberTPLSpanSummaryVO.getPolicyEndDate()
381:							memberTPLSpanSummaryVO.setPolicyEndDate(tplEnddate);
388:					TplVO tplVO = tplVOMapper.mapDOToVO(memberTPLSpanSummaryVO);
395:				memberEligibilityDetailsVO.setTplVO(tplVOList);
401:		return memberEligibilityDetailsVO;
407:	 * @see com.xerox.he.provider.checkmembereligibility.rest.ProviderCheckEligibilityRestService#getServerDate()
420:	 * Method memberValidityCheck.
421:	 * @param memberID String
423:	private void memberValidityCheck(String memberID) {
426:			if (memberID == null) {
427:				throw new NotFoundException("he.error.member.id.not.found"
428:						+ memberID);
429:			} else if (!memberID.matches(regex)) {
430:				throw new NotFoundException("he.error.member.id.not.found"
431:						+ memberID);
433:			if (!memberEligibilityService.checkMemberIDValidity(memberID)) {
434:				throw new NotFoundException("he.error.member.id.not.found"
435:						+ memberID);
438:		} catch (MemberSupportBusinessException e) {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/service/MemberEligibilityService.java
-- Search Results --> 

9:package com.xerox.he.provider.checkmembereligibility.service;
13:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
14:import com.acs.enterprise.mmis.member.common.vo.MemberInformationRequestVO;
15:import com.acs.enterprise.mmis.member.common.vo.MemberVerificationDetailsVO;
20: * File name: MemberEligibilityService.java Development
25:public interface MemberEligibilityService {
28:	 * Method searchEligibleMembers.
29:	 * @param member MemberInformationRequestVO
30:	 * @return List<MemberVerificationDetailsVO>
34:	public List<MemberVerificationDetailsVO> searchEligibleMembers(MemberInformationRequestVO member)
38:	 * Method retrieveEligibleMembersDetails.
39:	 * @param member MemberInformationRequestVO
40:	 * @return MemberVerificationDetailsVO
43:	public MemberVerificationDetailsVO retrieveEligibleMembersDetails(
44:			MemberInformationRequestVO member) throws InternalServerException;
46:	 * Method checkMemberIDValidity.
47:	 * @param memberID String
49:	 * @throws MemberSupportBusinessException
51:	public boolean checkMemberIDValidity(String memberID) throws MemberSupportBusinessException;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/service/MemberEligibilityServiceImpl.java
-- Search Results --> 

9:package com.xerox.he.provider.checkmembereligibility.service;
33:import com.acs.enterprise.mmis.member.common.application.exception.MemberSupportBusinessException;
34:import com.acs.enterprise.mmis.member.common.domain.EligibilitySpan;
35:import com.acs.enterprise.mmis.member.common.domain.LockinSpan;
36:import com.acs.enterprise.mmis.member.common.helper.ErrorCodeConstant;
37:import com.acs.enterprise.mmis.member.common.vo.EligibilityGuaranteeResponse;
38:import com.acs.enterprise.mmis.member.common.vo.ErrorDescriptionVO;
39:import com.acs.enterprise.mmis.member.common.vo.MemberInformationRequestVO;
40:import com.acs.enterprise.mmis.member.common.vo.MemberVerificationDetailsVO;
41:import com.acs.enterprise.mmis.member.support.application.exception.MemberVerificationBusinessException;
42:import com.acs.enterprise.mmis.member.support.common.delegate.MemberSupportDelegate;
50:import com.xerox.he.provider.checkmembereligibility.helper.EligibilitySearchHelper;
53: * File name: MemberEligibilityServiceImpl.java Development
59:public class MemberEligibilityServiceImpl implements MemberEligibilityService {
64:	private MemberSupportDelegate memberSupportDelegate;
75:        .getLogger(MemberEligibilityServiceImpl.class.getName());
78:     * This method checks searches for the eligible members and returns a list of MemberDetails.
80:     * @param member MemberDetailVO object.
83:     * @return List containing the Eligible Member. * @throws InternalServerException
84:     * @throws ValidationException  * @see com.xerox.he.provider.checkmembereligibility.service.MemberEligibilityService#searchEligibleMembers(MemberInformationRequestVO)
88:    public List<MemberVerificationDetailsVO> searchEligibleMembers(MemberInformationRequestVO member) throws InternalServerException, ValidationException {
90:        List<MemberVerificationDetailsVO> responseList = new ArrayList<MemberVerificationDetailsVO>();
92:        	responseList = retrieveEligibleMembers(
93:                responseList, member);
96:            LOGGER.debug("Error occurred while searching eligible members ", e);
104:     * This method Searches and retrieves the Eligibility Confirmation Details of a particular member.
106:     * @param member MemberDetailVO object.
108:     * @return List containing the Eligibility Confirmation Details of a Member. * @throws InternalServerException
109:     * @see com.xerox.he.provider.checkmembereligibility.service.MemberEligibilityService#retrieveEligibleMembersDetails(MemberInformationRequestVO)
113:    public MemberVerificationDetailsVO retrieveEligibleMembersDetails(MemberInformationRequestVO member)
115:    	MemberVerificationDetailsVO memberVerificationDetailsVO ;
117:        	memberVerificationDetailsVO=retrieveMemberDetails( member);
121:            LOGGER.debug("Error occurred while searching eligible members ", e);
125:        return memberVerificationDetailsVO;
129:	 * This method retrieves the Eligible Members.
133:	 * @param member
134:	 *            MemberDetailVO object.
138:	 * @return List containing the Eligible Members. * @throws InternalServerException * @throws ValidationException */
140:	private List<MemberVerificationDetailsVO> retrieveEligibleMembers(
141:			List<MemberVerificationDetailsVO> responseList,
142:			MemberInformationRequestVO member) throws InternalServerException,
148:			Long memberAltId;
151:			if (member.getAltID() != null
152:					&& member.getAltID().length() == HEConstants.STANDARD_MID_LENGTH) {
153:				memberAltId = memberSupportDelegate.getMemberSysIdForAltId(
154:						member.getAltID(), "MID");
155:				if (memberAltId == null) {
157:							"he.error.member.idnotfound", null));
161:			MemberVerificationDetailsVO memVerificationDetailsVO = fetchEligibleMembers(
162:					member, lockinSpanTypeList);
165:		} catch (SystemListNotFoundException | MemberSupportBusinessException
166:				| MemberVerificationBusinessException e) {
210:	 * Fetches the eligibility members
217:	 * @param member MemberInformationRequestVO
218:	 * @return memVerificationDetailsVO * @throws MemberVerificationBusinessException * @throws ValidationException */
219:	private MemberVerificationDetailsVO fetchEligibleMembers(
220:			MemberInformationRequestVO member, List<SystemListDetail> lockinSpanTypeList)
221:			throws MemberVerificationBusinessException, ValidationException {
223:		MemberVerificationDetailsVO memVerificationDetailsVO = null;
227:		memVerificationDetailsVO = memberSupportDelegate
228:				.getMemberInformationDetails(member);
234:						.format(member
238:						.format(member
259:			MemberVerificationDetailsVO memVerificationDetailsVO)
261:		boolean blnIsMultipleMemberErrorHandled = false;
275:							blnIsMultipleMemberErrorHandled = true;
277:									"he.error.multiple.Member", null));
282:							blnIsMultipleMemberErrorHandled = true;
289:		if (!blnIsMultipleMemberErrorHandled) {
291:					"he.error.common.invalid.member", null));
305:	 * @param member
306:	 *            MemberDetailVO object.
309:	 * @return List containing the Eligible Members. * @throws InternalServerException */
310:	private MemberVerificationDetailsVO retrieveMemberDetails(MemberInformationRequestVO member)
313:			//MemberEligibilityDetailsVO memberEligibilityDetailsVO = new MemberEligibilityDetailsVO();
314:			//MemberServiceDetailsVO memberServiceDetailsVO = new MemberServiceDetailsVO();
315:			//MemberConfirmationDetailsVO memberConfirmationDetailsVO = new MemberConfirmationDetailsVO();
319:			Long memberAltId;
323:			MemberVerificationDetailsVO memVerificationDetailsVO = fetchEligibleMemberDetails(
324:					member, lockinSpanTypeList);
327:		} catch (SystemListNotFoundException | MemberVerificationBusinessException e) {
334:	 * Fetches the eligibility details for a specific member
340:	 * @param member MemberInformationRequestVO
341:	 * @return memVerificationDetailsVO * @throws MemberVerificationBusinessException */
342:	private MemberVerificationDetailsVO fetchEligibleMemberDetails(
343:			MemberInformationRequestVO member, List<SystemListDetail> lockinSpanTypeList)
344:			throws MemberVerificationBusinessException {
345:		LOGGER.debug("5010 : Inside fetchEligibleMemberDetails method ");
347:		MemberVerificationDetailsVO memVerificationDetailsVO = null;
351:			memVerificationDetailsVO = memberSupportDelegate
352:					.getMemberInformationDetails(member);
361:							lockinSpanTypeList, member);
371:		} catch (MemberVerificationBusinessException e) {
378:	 * Populates LockinSpan for MemberVerificationDetailsVO
380:	 * @param memberVerificationDetailsVO
384:	 * @param member MemberInformationRequestVO
387:			MemberVerificationDetailsVO memberVerificationDetailsVO,
388:			List<SystemListDetail> lockinSpanTypeList, MemberInformationRequestVO member) {
394:		memberVerificationDetailsVO.setServiceDateFrom(ProviderUtil
395:				.splitString(dateFormatter.format(member.getBeginDate())));
396:		memberVerificationDetailsVO.setServiceDateTo(ProviderUtil
397:				.splitString(dateFormatter.format(member.getEndDate())));
400:			List<CommonReview> commonReviewList = memberVerificationDetailsVO
430:			memberVerificationDetailsVO.setLockInDetails(lockinList);
500:							FunctionalAreaConstants.MEMBER,
529:									FunctionalAreaConstants.MEMBER,
563:									FunctionalAreaConstants.MEMBER,
577:	 * Method checkMemberIDValidity.
578:	 * @param memberID String
580:	 * @throws MemberSupportBusinessException
581:	 * @see com.xerox.he.provider.checkmembereligibility.service.MemberEligibilityService#checkMemberIDValidity(String)
583:	public boolean checkMemberIDValidity(String memberID) throws MemberSupportBusinessException
585:		Long memberAltId;
586:		if (memberID != null
587:				&& memberID.length() == HEConstants.STANDARD_MID_LENGTH) {
588:			memberAltId = memberSupportDelegate.getMemberSysIdForAltId(
589:					memberID, "MID");
590:			if (memberAltId == null) {
591:				/*throw new NotFoundException("Member Id: " +member.getAltID()
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/BenifitPlanVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/EligibilityStatusVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/MedicareVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/MemberConfirmationDetailsVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
11: * File name: MemberConfirmationDetailsVO.java Development
17:@JsonRootName("MemberConfirmationDetails")
18:public class MemberConfirmationDetailsVO {
36:    @JsonProperty("memberId")
37:    private String  memberId;
125:     * Method getMemberId.
128:    public String getMemberId() {
129:        return memberId;
132:     * Method setMemberId.
133:     * @param memberId String
135:    public void setMemberId(String memberId) {
136:        this.memberId = memberId;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/MemberDetailVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
15: * File name: MemberDetailVO.java Development
21:@JsonRootName("MemberDetail")
38:public class MemberDetailVO extends EnterpriseBaseVO {
45:    @JsonProperty("memberID")
46:    @Pattern(regexp="[a-zA-Z0-9]{11}", message="he.error.invalid.member.id, Member ID")
47:    private String memberID;
71:     * Method getMemberID.
74:    public String getMemberID() {
75:        return memberID;
79:     * @param memberID the memberID to set
81:    public void setMemberID(String memberID) {
82:        this.memberID = memberID;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/MemberEligibilityDetailsVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
10: * File name: MemberEligibilityDetailsVO.java Development
16:@JsonRootName("MemberEligibilityDetails")
17:public class MemberEligibilityDetailsVO extends EnterpriseBaseVO {
24:	@JsonProperty("memberServiceDetails")
25:    private MemberServiceDetailsVO memberServiceDetailsVO;
27:    @JsonProperty("memberConfirmationDetails")
28:    private MemberConfirmationDetailsVO memberConfirmationDetailsVO;
45:     * Method getMemberServiceDetailsVO.
46:     * @return MemberServiceDetailsVO
48:    public MemberServiceDetailsVO getMemberServiceDetailsVO() {
49:        return memberServiceDetailsVO;
53:     * Method setMemberServiceDetailsVO.
54:     * @param memberServiceDetailsVO MemberServiceDetailsVO
56:    public void setMemberServiceDetailsVO(
57:        MemberServiceDetailsVO memberServiceDetailsVO) {
58:        this.memberServiceDetailsVO = memberServiceDetailsVO;
62:     * Method getMemberConfirmationDetailsVO.
63:     * @return MemberConfirmationDetailsVO
65:    public MemberConfirmationDetailsVO getMemberConfirmationDetailsVO() {
66:        return memberConfirmationDetailsVO;
70:     * Method setMemberConfirmationDetailsVO.
71:     * @param memberConfirmationDetailsVO MemberConfirmationDetailsVO
73:    public void setMemberConfirmationDetailsVO(
74:        MemberConfirmationDetailsVO memberConfirmationDetailsVO) {
75:        this.memberConfirmationDetailsVO = memberConfirmationDetailsVO;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/MemberSearchVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
7: * File name: MemberSearchVO.java Development
12:public class MemberSearchVO extends EnterpriseBaseVO{
19:	public MemberDetailVO filters;
23:	 * @return MemberDetailVO
25:	public MemberDetailVO getFilters() {
31:	 * @param filters MemberDetailVO
33:	public void setFilters(MemberDetailVO filters) {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/MemberServiceDetailsVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
8: * File name: MemberServiceDetailsVO.java Development
14:@JsonRootName("MemberServiceDetails")
15:public class MemberServiceDetailsVO {
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ProviderServices/src/main/java/com/xerox/he/provider/checkmembereligibility/vo/TplVO.java
-- Search Results --> 

1:package com.xerox.he.provider.checkmembereligibility.vo;
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ReferenceServices/src/main/java/com/xerox/he/tam/servlet/MemberLoginResponseHandlerServlet.java
-- Search Results --> 

25: * Servlet implementation class for Servlet: MemberLoginResponseHandlerServlet
28:public class MemberLoginResponseHandlerServlet extends
44:     * Holds info of Member Login URL found in resource bundle.
46:    private String memberLoginURL = null;
49:     * Holds info of MemberPostAuthURL found in resource bundle.
51:    private String memberPostAuthURL = null;
54:     * Holds info of MemberChangePinURL found in resource bundle.
56:    private String memberChangePinURL = null;
59:     * Holds info of MemberHomePage found in resource bundle.
61:    private String memberHomePage = null;
64:     * holds the <code>memberExpiredPinURL</code> found in the resource bundle.
66:    private String memberExpiredPinURL = null;
69:     * holds the <code>memberMultipleSessionURL</code> found in the resource bundle.
71:    private String memberMultipleSessionURL = null;
74:     * holds the <code>memberServletURL</code> found in the resource bundle.
76:    private String memberServletURL = null;
79:     * holds the <code>memberServletAuthenticatedURL</code> found in the resource bundle.
81:    private String memberServletAuthenticatedURL = null;
104:    private String memberId = "memberid";
112:    public MemberLoginResponseHandlerServlet() {
130:            .println("<MemberLoginResponseHandlerServlet> doPost(): Begin");
132:        String submittedMemberId =
133:            request.getParameter(ResponseHandlerConstants.MEMBER_ID_PARAMETER);
134:        boolean validMemberId = false;
136:            .println("<MemberLoginResponseHandlerServlet> doPost(): submittedMemberId="
137:                + submittedMemberId);
139:            request.getParameter(ResponseHandlerConstants.MEMBER_PIN_PARAMETER);
146:            if ((submittedMemberId != null) && (pin != null)) {
148:                    .println("In <MemberLoginResponseHandlerServlet> doPost(): Member Id and Pin are not null");
151:                if (memberValidate(submittedMemberId)) {
153:                    if (pinValidate(pin, submittedMemberId)) {
154:                        validMemberId =
155:                            pinMgtDel.isValidMemberId(submittedMemberId);
157:                        if (validMemberId) {
162:                                    .validatePIN(secPIN, submittedMemberId);
166:                                    pinMgtDel.validateMember(submittedMemberId,
170:                                    submittedMemberId);
175:                                    .println("In <MemberLoginResponseHandlerServlet> doPost(): PIN Status is: "
183:                                            .println("In <MemberLoginResponseHandlerServlet> doPost(): The Member Id "
198:                                            memberId, submittedMemberId));
199:                                        response.sendRedirect(memberLoginURL);
203:                                            .println("In <MemberLoginResponseHandlerServlet> doPost(): The Pin is expired");
217:                                            memberId, submittedMemberId));
218:                                        response.sendRedirect(memberLoginURL);
222:                                        .println("resetPINCount value iin Member Login Handler is = "
227:                                            .println("###inside member controller bean");
241:                                    // response.sendRedirect(memberExpiredPinURL);
245:                                        .println("<MemberLoginResponseHandlerServlet> doPost(): User's account "
246:                                            + submittedMemberId + " is locked.");
247:                                    returnErrorToMemberLogin(session, response,
248:                                        SecurityConstants.MEMBER_PIN_LOCKED);
250:                                    .equalsIgnoreCase(SecurityConstants.MEMBER_ID_INACTIVE_CODE)) {
252:                                        .println("<MemberLoginResponseHandlerServlet> doPost(): memberid "
253:                                            + submittedMemberId
255:                                    returnErrorToMemberLogin(session, response,
258:                                    .equalsIgnoreCase(SecurityConstants.MEMBER_ID_LOGIN_SUCCESS))
262:                                        .println("<MemberLoginResponseHandlerServlet> doPost(): "
268:                                            .getMemberActiveSession(submittedMemberId);
271:                                        .println("<MemberLoginResponseHandlerServlet> doPost(): sessionValidate="
276:                                            .println("In <MemberLoginResponseHandlerServlet> doPost(): "
279:                                            memberId, submittedMemberId));
284:                                        response.sendRedirect(memberLoginURL);
287:                                        // .sendRedirect(memberMultipleSessionURL);
290:                                            .println("In <MemberLoginResponseHandlerServlet> doPost(): "
292:                                        response.sendRedirect(memberServletURL);
295:                                    returnErrorToMemberLogin(session, response,
300:                                    .println("In <MemberLoginResponseHandlerServlet> doPost(): Invalid PIN entered");
301:                                returnErrorToMemberLogin(session, response,
306:                                .println("In <MemberLoginResponseHandlerServlet> doPost(): Entered Memeber Id is Invalid");
307:                            returnErrorToMemberLogin(session, response,
308:                                "invalid_memberid");
312:                            .println("In <MemberLoginResponseHandlerServlet> doPost(): Enetred PIN did not pass "
314:                        returnErrorToMemberLogin(session, response,
319:                        .println("In <MemberLoginResponseHandlerServlet> doPost(): Entered Memeber ID did not pass regex check.  Member Id="
320:                            + submittedMemberId);
321:                    returnErrorToMemberLogin(session, response,
322:                        "invalid_memberid");
330:            log.error("In <MemberLoginResponseHandlerServlet> doPost(): message:"
332:            log.error("In <MemberLoginResponseHandlerServlet> doPost(): code:"
335:                log.error("In <MemberLoginResponseHandlerServlet> doPost(): Account is Locked::");
336:                returnErrorToMemberLogin(session, response,
341:                "In <MemberLoginResponseHandlerServlet> doPost(): Exception "
346:    private void returnErrorToMemberLogin(HttpSession session,
348:        // session.setAttribute(ResponseHandlerConstants.MEMBER_INVALID_MESG,
351:        response.sendRedirect(memberLoginURL);
374:            String memberFromHttpHeader = null;
377:                .println("<MemberLoginResponseHandlerServlet> doGet(): Enumeration of Headers ");
381:                    .println("<MemberLoginResponseHandlerServlet> doGet() : "
388:                    .equalsIgnoreCase(ResponseHandlerConstants.HTTP_HEADER_MEMBER_ID)) {
389:                    memberFromHttpHeader = request.getHeader(headerName);
394:                .println("In <MemberLoginResponseHandlerServlet> doGet(): smsSessionIndex="
397:                .println("In <MemberLoginResponseHandlerServlet> doGet(): memberFromHttpHeader="
398:                    + memberFromHttpHeader);
405:                        .getParameter(ResponseHandlerConstants.MEMBER_MULT_SESS_PARAM) != null) && "yes"
407:                            .getParameter(ResponseHandlerConstants.MEMBER_MULT_SESS_PARAM)))) {
409:                    .println("In <MemberLoginResponseHandlerServlet> doGet(): not yet authenticated");
413:                String memberFromPost =
417:                    .println("In <MemberLoginResponseHandlerServlet> doGet(): memberFromPost="
418:                        + memberFromPost);
421:                        .getParameter(ResponseHandlerConstants.MEMBER_MULT_SESS_PARAM);
425:                        .println("In <MemberLoginResponseHandlerServlet> doGet(): arrived here from multiple member "
427:                    pinMgtDel.terminateMemberSession(memberFromPost);
428:                    if (memberFromPost != null && !memberFromPost.isEmpty()) {
429:                        createEventLog(memberFromPost, new Long(990100012),
430:                            new Object[] {memberFromPost});
433:                            .println("memberFromPost is empty, not log to event log.");
437:                    memberServletAuthenticatedURL + "?"
440:                setResponseHeaders(response, memberFromPost, redirectURL);
443:                    .println("In <MemberLoginResponseHandlerServlet> doGet(): already authenticated, "
445:                pinMgtDel.updateSession(smsSessionIndex, memberFromHttpHeader);
447:                    .println("In <MemberLoginResponseHandlerServlet> doGet(): SMS session update to DB successful");
457:                    .equalsIgnoreCase(SecurityConstants.MEMBER_ID_LOGIN_SUCCESS)) {
459:                        .println("In <MemberLoginResponseHandlerServlet> doGet(): login success, will redirect to home");
462:                    response.addCookie(createCookie(memberId,
463:                        memberFromHttpHeader));
466:                    response.sendRedirect(memberLoginURL);
467:                    // response.sendRedirect(memberHomePage);
470:                        .println("In <MemberLoginResponseHandlerServlet> doGet(): login success, will redirect "
473:                    response.addCookie(createCookie(memberId,
474:                        memberFromHttpHeader));
479:                    response.sendRedirect(memberLoginURL);
481:                    // response.sendRedirect(memberPostAuthURL);
490:                "In <MemberLoginResponseHandlerServlet> doPost(): Exception "
499:     * @param memberId : holds the Member Id value.
502:    public boolean pinValidate(String value, String memberId) {
518:     * Method to validate the memberID value.
520:     * @param value : holds the memberID value.
521:     * @return boolean : returns the memberID is valid or not.
525:    public boolean memberValidate(String value) {
527:        if (!CommonValidations.getCurrentInstance().isLoginValidMember((value))) {
539:        String loggedInMemberId, String redirURL) {
541:            .println("<MemberLoginResponseHandlerServlet> setResponseHeaders(): Begin");
542:        response.addHeader("am-eai-xattrs", "tagvalue_member_id");
543:        response.addHeader("tagvalue_member_id", loggedInMemberId);
544:        response.setHeader("am-eai-user-id", memberId);
549:        createEventLog(loggedInMemberId, Long.parseLong("990100013"),
550:            new Object[] {loggedInMemberId, fmt.format(new Date())});
552:            .println("<MemberLoginResponseHandlerServlet> setResponseHeaders(): End");
566:            memberLoginURL = rb.getString("MEMBER_LOGIN").trim();
567:            memberPostAuthURL = rb.getString("MEMBER_POST_AUTH").trim();
568:            memberChangePinURL = rb.getString("MEMBER_CHANGEPIN").trim();
569:            memberHomePage = rb.getString("MEMBER_HOME_PAGE").trim();
570:            memberExpiredPinURL = rb.getString("MEMBER_EXPIRED_PIN_URL").trim();
571:            memberMultipleSessionURL =
572:                rb.getString("MEMBER_MULTIPLE_SESSION_URL").trim();
573:            memberServletURL = rb.getString("MEMBER_SERVLET_URL").trim();
574:            memberServletAuthenticatedURL =
575:                rb.getString("MEMBER_SERVLET_AUTHENTICATED_URL").trim();
582:                .println("Could not initialize the servlet MemberLoginResponseHandlerServlet");
595:    private void createEventLog(String memberId, Long eventCode,
598:            .println("<MemberLoginResponseHandlerServlet> createEventLog(): Begin");
601:         * factory.createSecurityEvent(null, memberId, "Event", eventCode, eventArgs); log.logEvent(event); } catch
602:         * (Exception e) { log.fatal( "<MemberLoginResponseHandlerServlet> createEventLog(): " +
605:            .debug("<MemberLoginResponseHandlerServlet> createEventLog(): End");
--------------------------------------------------------------------------------------------------------------------------------------
-- Search String  -->  member
-- Module Name    -->  member
-- File Name      -->  ./ServiceAuthorization/src/main/java/com/xerox/he/serviceauthorization/view/vo/ServiceAuthMemberVO.java
-- Search Results --> 

10: * This class holds the service authorization member details.
13:public class ServiceAuthMemberVO extends EnterpriseBaseVO
19:			.getLogger(ServiceAuthMemberVO.class);
22:     * This is the default constructor for the class ServiceAuthMemberVO.
24:    public ServiceAuthMemberVO()
27:        initServiceAuthMemberVO();
31:     * This is the init method for the class ServiceAuthMemberVO.
33:    private final void initServiceAuthMemberVO()
38:     * The Member Last Name is the member's surname or family name. This
40:     * determining whether a member is already known to the system. 
45:     * This is the member's given name or first name. This information is used
47:     * member is already known to the system. 
52:     * This is the date (month, day, century, and year) that the member was
59:     * Member's age. Calculated from Date of Birth.
64:     * Subscriber Gender Code.This code identifies the member's gender. This
71:     * This is the first letter of the member's middle name. 
76:     * Member Social Security Number
81:     * This is the member's name suffix, e.g., JR. 
104:     * This is the member's name prefix, e.g., JR. 
250:     * This is the members address line1
254:     * This is the members address line2
258:     * This is the members city
262:     * This is the members state
266:     * This is the members zip code
270:     * This is the members zip code
274:     * This is the members country
278:     * This is the members contrySubDivision
494:     * Member SysID.
496:	private String memberSysId;
499:	 * @return Returns the memberSysId.
501:	public String getMemberSysId() {
502:		return memberSysId;
505:	 * @param memberSysId The memberSysId to set.
507:	public void setMemberSysId(String memberSysId) {
508:		this.memberSysId = memberSysId;

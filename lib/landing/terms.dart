//
// import 'package:flutter/material.dart';
// import 'package:prime_pro/core/components/scaffolds/app_bar_scaffold.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
//
// import '../../core/config/brand_config.dart';
//
// class TermScreen extends StatelessWidget {
//   const TermScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var height = MediaQuery.of(context).size.height;
//     var width = MediaQuery.of(context).size.width;
//     return AppBarScaffold(
//       titleText: "Terms of service",
//         physics: NeverScrollableScrollPhysics(),
//         child: Container(
//           height: height,
//           width: width,
//           child: ListView(
//             children: [
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 children: [
//
//                   SizedBox(height: 15.h,),
//
//                   Text("Terms and Condition",
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                         fontSize: 16.sp,
//                         fontWeight: FontWeight.w600,
//                         color: BrandStyleConfig.primary
//                     ),),
//
//                   SizedBox(height: 2.h,),
//
//                   Text("Welcome to our Terms and Conditions of Use. These terms affect your legal rights, endeavour to read them and treat with utmost importance."
//                       "These terms and conditions ('Terms' or 'Agreement') is an agreement between TrustBanc ('the Company', 'us', 'we' or 'our') and you ('User', 'you' or 'your'). This Agreement sets forth the general terms and conditions of your use of the TrustBanc mobile application and any of its products or services (collectively, the 'Application' or 'Services').",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Accounts and Registration", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("You must register to operate an account with the Company to be able to use the mobile Application. The Application can be installed on a mobile device running an operating system supported by the Company."
//                       "\n\nTo log onto the Application, you will need to enter your User ID and other security information that we request, or where available, by using biometric authentication. We will automatically log you out of the Application if you have not used it for 15 minutes. We may notify you from time to time about changes in the security information."
//                       "\n\nIf you create an account in the Application, you are responsible for maintaining the security of your account and you are fully responsible for all activities that occur under the account and any other actions taken in connection with it. Providing false contact information of any kind may result in the termination of your account. You must immediately notify us of any unauthorized use of your account or any other breach of security. We will not be liable for any act or omission by you, including any damage of any kind incurred as a result of such act or omission.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Qualification for Use", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("TrustBanc Products are available only to people aged 18 or over. You must be over the age of 18 to operate an account with the Company and use the Application. Individuals under the age of 18 may utilize the service only with the involvement of a parent or legal guardian, under such a person's account and otherwise subject to these Terms. The User must have the contractual capacity to enter a binding contract with us and is not barred from doing so under any applicable law(s).\n"
//                       "\nYou also warrant that any registration information that you submit to the Company is true, accurate, and complete, and you always agree to keep it that way. The Company will not be held liable for any loss or damage that may arise in this respect.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Services Provided", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("These are some of the services provided by the Company on the mobile application:"
//                       "\n•	Saving Account: Open, Manage, and operate savings."
//                       "\n•	Fixed Deposit: Invest in fixed deposits and track maturity details."
//                       "\n•	Loans: Apply for and manage loans."
//                       "\n•	Mutual Funds: Invest in and track mutual fund portfolios."
//                       "\n•	And other additional services that we may be provide in any future updates of the Application.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Savings Account Terms", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Interest rates, minimum balance requirements, and fees are subject to the specific account terms, which will be provided at the time of account opening. We reserve the right to freeze or close accounts in accordance with applicable laws and our policies.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Fixed Deposit Terms", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Fixed deposit investments are subject to minimum deposit amounts and applicable tenures. Premature withdrawal may attract penalties, as per the terms provided during deposit creation. Interest rates may vary and are disclosed before deposit initiation.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Loan Services Terms", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Loan approvals are subject to eligibility checks, credit assessments, and other internal policies. By applying for a loan, you consent to credit bureau checks and the submission of required documentation. Defaulting on loan repayments may result in penalties, legal action, and/or adverse credit reporting. ",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Mutual Funds Terms", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Mutual fund investments are subject to market risks. Past performance is not indicative of future results. You are advised to review the scheme-related documents before investing. We are not liable for any financial losses arising from mutual fund investments.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Fees and Charges", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Certain services may attract fees or charges, which will be communicated upfront. You agree to pay all applicable fees, taxes, and charges related to your use of the Application and its Services.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Backups", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("We are not responsible for backing up data residing in the Application. In no event shall we be held liable for any loss of any data. It is your sole responsibility to maintain appropriate backup of your data. Notwithstanding the foregoing, on some occasions and in certain circumstances, with absolutely no obligation, we may be able to restore some or all of your data which has been deleted as of a certain date and time when we may have backed up data for our own purposes. We make no guarantee that the data you need will be available.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Consent", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Using the Application, you consent to receive electronic communication from the Company relating to your account. We will communicate with you via email, or by posting notices on the Application or through other methods. For contractual purposes, you consent to receive communications from us electronically and you agree that all agreements, notices, disclosures and other communications that we provide you electronically satisfy any legal requirement that such communication should be in writing."
//                       "\n\nYou also consent to receive certain other communication from us, such as newsletters, special offers, questionnaires, customer surveys, or other announcements via email or other methods. You may opt-out of receiving non-transactional communications, including marketing communications from us by following the directions in our email to “unsubscribe” from our mailing list, or by sending an email request to support@trustbancgroup.com"
//                       "\n\nPlease be aware that if you choose not to receive such communication, certain offers attached to the services you have chosen may be affected. We will still communicate with you in connection with transactional communications, including but not limited to servicing your account and customer services.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Suspension of the mobile application", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("TrustBanc can, at any time, suspend your use of the mobile Application in any of the following situations:"
//                       "\n\n•	We have concerns about the security of the Application."
//                       "\n\n•	We suspect that your Application has been used fraudulently or in an unauthorized way."
//                       "\n\n•	There is a significantly increased risk that you will be unable to repay any overdraft on any of your accounts."
//                       "\n\n•	There are legal or regulatory obligations we must meet. We will usually give you advance notice of any suspension and tell you why. However, we will not do so if this would compromise our reasonable security measures, or it is unlawful to do this. Occasionally we may not be able to contact you to give you advance notice. If you have entered incorrect log on details on the Application on several occasions, we will suspend your access to the Application. If this happens, you can reset your log on details within the Application if you can identify yourself and answer our security questions. Otherwise, you will need to contact us at support@trustbancgroup.com.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Links to other Mobile Applications", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Although this mobile Application may be linked to other software applications, we are not, directly or indirectly, implying any approval, association, sponsorship, endorsement, or affiliation with any linked software application, unless specifically stated herein. We are not responsible for examining or evaluating, and we do not warrant the offerings of, any businesses or individuals or the content of their software applications. We do not assume any responsibility or liability for the actions, products, services, and content of any other third parties. You should carefully review the legal statements and other conditions of use of any software application which you access through a link from this Application. Your linking to any other off-site software application is at your own risk.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Prohibited uses", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("In addition to other terms as set forth in the Agreement, you are prohibited from using the mobile Application or its content:"
//                       "\n\,(a) For any unlawful purpose;"
//                       "\n\n(b) To solicit others to perform or participate in any unlawful act;"
//                       "\n\n(c) To violate any international, federal or state regulations, rules, laws, or local ordinances;"
//                       "\n\n(d) To infringe upon or violate our intellectual property rights or the intellectual property rights of others;"
//                       "\n\n(e) To harass, abuse, insult, harm, defame, slander, disparage, intimidate, or discriminate based on gender, sexual orientation, religion, ethnicity, race, age, national origin, or disability;"
//                       "\n\n(f) To submit false or misleading information;"
//                       "\n\n(g)To upload or transmit viruses or any other type of malicious code that will or may be used in any way that will affect the functionality or operation of the Service of any related"
//                       "Application, other Application or the internet;"
//                       "\n\n(h) To collect or track the personal information of others;"
//                       "\n\n(i) To spam, phish, pharm, pretext, spider, crawl, or scrape;"
//                       "\n\n(j) For any obscene or immoral purpose; or"
//                       "\n\n(k) To interfere with or circumvent the security features of the Application or any related application, other mobile applications, or the internet. We reserve the right to terminate your use of the Application, our Services or any related software application for violating any of the prohibited uses.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Intellectual property rights", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("This Agreement does not transfer to you any intellectual property owned by the Company or third parties, and all rights, titles, and interests in and to such property will remain (as between the parties) solely with the Company. All trademarks, service marks, graphics, and logos used in connection with our Application and Services are trademarks or registered trademarks of TrustBanc. Other trademarks, service marks, graphics, and logos used in connection with our Application or Services may be the trademarks of other third parties. Your use of our Application and Services grants you no right or license to reproduce or otherwise use the Company or third-party trademarks.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Copyright Infringement", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("All rights reserved. No part of the Application may be copied, reproduced, ripped, recorded, re-engineered, decompiled, disassembled, modified, reproduced, distributed, or transmitted in any form or by any means either electronic or mechanical methods, without the prior written permission of TrustBanc.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Technology Limitations and Modifications", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("The Company will make reasonable efforts to keep the Application operational. However, certain technical difficulties or maintenance may, from time to time, result in temporary interruptions. The Company reserves the right, periodically and at any time, to modify or discontinue, temporarily or permanently, functions and features of the Application with or without notice, without liability to you for any interruption, modification, or discontinuation of the Application, or Services or any function or feature thereof. You understand and agree that we have no obligation to maintain, support, upgrade, or update the Application, or to provide all or any specific content through the Application.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Limitation of Liability", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("To the fullest extent permitted by applicable law, in no event will TrustBanc, its affiliates, officers, directors, employees, agents, suppliers or licensors be liable to any person for (a): any indirect, incidental, special, punitive, cover or consequential damages (including, without limitation, damages for lost profits, revenue, sales, goodwill, use or content, impact on business, business interruption, loss of anticipated savings, loss of business opportunity) however caused, under any theory of liability, including, without limitation, contract, tort, warranty, breach of statutory duty, negligence or otherwise, even if the Company has been advised as to the possibility of such damages or could have foreseen such damages.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Disclaimer Warranty", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("Our Application and Services are provided on an “as is” and “as available” basis without warranties of any kind, either expressed or implied, including, but not limited to, the implied warranty of merchantability, fitness for a particular purpose and non-infringement. No warranty is provided that the Application will be free from defects or viruses or operation of the Application will be uninterrupted. Your use of the Application and any other material or services downloaded or made available to you through the software is at your own discretion and risk, and you are solely responsible for any damage resulting from their use.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Restrictions", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("You shall not:"
//                       "\n\n(i) Modify, revise or create any derivative works of the Application;"
//                       "\n\n(ii) Decompile, reverse engineer or otherwise attempt to derive the source code for the Application;"
//                       "\n\n(iii) Redistribute, sell, rent, lease, sublicense, or otherwise transfer rights to the Application; or"
//                       "\n\n(iv) Remove or alter any proprietary notices, legends, symbols or labels in the Application including, but not limited to, any trademark, logo, or copyright.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Indemnification", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("You agree to indemnify and hold TrustBanc and its affiliates, directors, officers, employees, and agents harmless from and against any liabilities, losses, damages or costs, including reasonable attorneys' fees, incurred in connection with or arising from any third-party allegations, claims, actions, disputes, or demands asserted against any of them as a result of or relating to your Content, your use of the Application or our Services or any wilful misconduct on your part.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Severability", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("All rights and restrictions contained in these Terms and Conditions of Use may be exercised and shall be applicable and binding only to the extent that they do not violate any applicable laws and are intended to be limited to the extent necessary so that they will not render this Terms of Use illegal, invalid or unenforceable. If any provision or portion of any provision of this Agreement shall be held to be illegal, invalid or unenforceable by a court of competent jurisdiction, it is the intention of the parties that the remaining provisions or portions thereof shall constitute their agreement with respect to the subject matter hereof, and all such remaining provisions or portions thereof shall remain in full force and effect.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Dispute Resolution", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("The validity, construction, and performance of this Terms of Use shall be governed by the laws of the Federal Republic of Nigeria."
//                       "\n\nParties shall use their best endeavours to amicably settle any dispute or difference of opinion arising from or in connection with this Terms of Use through mutual discussions."
//                       "\n\nWhere the Parties are unable to resolve the dispute through mutual discussions, the dispute or difference of opinion shall be referred to mediation conducted by their legal representatives or financial auditors, where financial matters are involved. Failing, the dispute shall finally be referred to arbitration in accordance with the Arbitration and Mediation Act, 2003, or any amendment thereto."
//                       "\n\nThe place of arbitration shall be Lagos State, Nigeria and there shall be a sole arbitrator who shall be appointed jointly by the parties. Where the parties fail to jointly agree on the appointment, they shall approach the Lagos Multi-Door Courthouse to appoint a sole arbitrator who shall be competent to adjudicate on the issue in dispute."
//                       "\n\nThe language to be used in the arbitral proceedings shall be English. The arbitral award shall be final and binding between the Parties. The reference of any dispute to arbitration shall not prevent the Parties from seeking any form of protective reliefs/injunctions/specific performance from a court of law via motion or other originating processes for the protection of any res pending the constitution of the Arbitral Panel and/or final award.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Chargebacks", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("You may be assessed Chargebacks for"
//                       "\n\n(i)	Customer disputes;"
//                       "\n\n(ii)	Unauthorized or improperly authorized transactions;"
//                       "\n\n(iii)	Transactions that do not comply with the terms of this Agreement or are allegedly unlawful or suspicious; or"
//                       "\n\n(iv)	Any reversals for any reason by our processor, or the acquiring or issuing banks."
//                       "\n\nWhere a chargeback occurs, you are immediately liable for all claims, expenses, fines, and liability we incur arising out of that chargeback and agree that we may recover these amounts by debiting your Bank Account. Where these amounts are not recoverable through your bank account, you agree to pay all such amounts through any other means.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Changes and amendments", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("We reserve the right to modify this Terms of Use or its policies relating to the Application or our Services at any time, effective upon posting of an updated version of this Terms of Use in the Application. When we do, we will send you an email to notify you. Continued use of the Application after any such changes shall constitute your consent to such changes.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Acceptance of these terms", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("You acknowledge that you have read this Agreement and agree to all its terms and conditions. By using the Application or its Services you agree to be bound by this Terms of Use. If you do not agree to abide by the terms of this Terms of Use, you are not authorized to use or access the Mobile Application and its Services.",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 0.5.h,),
//
//                   Text("Contacting Us", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   Text("If you have any questions about this Agreement, please contact us: support@trustbancgroup.com  ",
//                     textAlign: TextAlign.left,
//                     style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                       fontSize: 13.sp,
//                     ),),
//
//                   SizedBox(height: 2.h,),
//
//                   Text("Signed by Management\nTrustBanc Holdings Limited", style: Theme.of(context).textTheme.bodySmall?.copyWith(
//                     fontSize: 14.sp,
//                     fontWeight: FontWeight.w600,
//                   ),),
//
//                   SizedBox(height: 2.h,)
//                 ],
//               ),
//             ],
//           ),
//         ),);
//   }
// }

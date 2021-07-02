import 'package:complex/domain/explore/explore_page_related_models/ExplorePageRelatedModels.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

class JobCard extends StatelessWidget {
  final LimitedJobData jobReqModel;
  const JobCard({Key key, @required this.jobReqModel}) : super(key: key);

  applyForJob() async {
    //
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => LimitedData.toDetailsPage(data: jobReqModel),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0x33000000),
              blurRadius: 8,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              jobReqModel.companyicon,
              width: 48,
              height: 48,
              fit: BoxFit.cover,
              errorBuilder: (context, obj, stck) => SizedBox.shrink(),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    jobReqModel.title.toUpperCase(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    jobReqModel.companyname,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(width: 4),
                      Text(
                        jobReqModel.addressarea.addressinfo,
                        style: Theme.of(context).textTheme.bodyText2.copyWith(
                              color: Color(0xff666666),
                            ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Text(
                    jobReqModel.salaryrange,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 2),
                        child: Row(
                          children: [
                            ImageIcon(
                              AssetImage('assets/icons/jobType.png'),
                            ),
                            SizedBox(width: 2),
                            Text(
                              jobReqModel.jobtype,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                            SizedBox(width: 8),
                            ImageIcon(
                              AssetImage('assets/icons/jobDate.png'),
                            ),
                            SizedBox(width: 2),
                            Text(
                              timeago.format(jobReqModel.postedon),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1
                                  .copyWith(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: applyForJob,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8.0),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(32),
                          ),
                          child: Text(
                            'APPLY',
                            style:
                                Theme.of(context).textTheme.bodyText1.copyWith(
                                      color: Colors.white,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

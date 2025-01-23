import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shelfy_team_project/theme.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildProfile(),
            Expanded(
              child: ListView(
                children: [
                  Text(
                    '유저 설정',
                    style: textTheme().labelMedium,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.person,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '프로필 설정',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.file_download_sharp,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '독서기록 내보내기',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.palette,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '컬러·폰트 설정',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.dark_mode,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '다크모드',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    // trailing: Switch(
                    //   value: _isChecked,
                    //   onChanged: (value) {},
                    // ),
                  ),
                  Text(
                    '지원',
                    style: textTheme().labelMedium,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      CupertinoIcons.question_circle_fill,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '자주 묻는 질문',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.mail_rounded,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '문의하기',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.chat_bubble,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '의견 보내기',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  Text(
                    '앱 정보',
                    style: textTheme().labelMedium,
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      CupertinoIcons.question_circle_fill,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '평점 남기기',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      CupertinoIcons.person_3_fill,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '팀 소개',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(
                      Icons.library_books_sharp,
                      color: Colors.grey[600],
                    ),
                    title: Text(
                      '서비스 이용약관',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    trailing: null,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column buildProfile() {
    return Column(
      children: [
        const SizedBox(height: 16.0),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.network(
            'https://picsum.photos/200',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            '닉네임',
            style: textTheme().displayLarge,
          ),
        ),
      ],
    );
  }
}

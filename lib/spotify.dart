// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print, sized_box_for_whitespace, sort_child_properties_last

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';

class Spotify extends StatefulWidget {
  const Spotify({super.key});

  @override
  State<Spotify> createState() => _SpotifyState();
}

class _SpotifyState extends State<Spotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Color.fromARGB(218, 0, 0, 0),
      body:
      
      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(children: [
          Row(
            children: [
              CircleAvatar(backgroundImage: NetworkImage('https://avatars.githubusercontent.com/u/157578225?v=4'),),SizedBox(width: 8,),
              ElevatedButton(onPressed: (){}, child: Text('All')),SizedBox(width: 8,),
              ElevatedButton(onPressed: (){}, child: Text('Music'),),
            ],
          ),
            SizedBox(height: 12,),

            Row(
              children: [
                Expanded( //?R1
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('              Bagdhara',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('data:image/jpeg;base64,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')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),

                Expanded( //?R1.1
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('              Sohojiya',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAABKVBMVEX///8AAAD8///5///8/Pz5+fnZ2dnr6+v39/fPz8/y8vKlpaXV1dXm5ubAwMCxsbF2dnYyMjKQkJCBgYFVVVVnZ2eIiIhsbGycnJwKCgolJSW5ublOTk6jo6Nzc3MsLCzvSSM6OjpGRkYYGBhdXV1AQECVlZUdHR0oKCjHx8frNgDrOwDvLgATExPqYkr+//r35N3zzcbogmz0RCTrVzbwQRXtSyDqsaT3w7Xx1MjjdVjjSCLtdGHtnIfuSCfkjW7qUyPxq5Xqw7btvLL48+rw2tTq39L1/vHfZkf75+TkckXlZT/yysnt2Mbzs6jvpZjuaFXpxrHuUzvwoozwk3/qhmbqh3bpemjvtpziWCrjlHzrZz3nZUrteGzkuqLvtbDtiWz03eDcKgCOCcyEAAASoElEQVR4nO1dC1faSrvOJCGQQLiDCCgBQUuCBoSJBYRWwFaPu9qq1bbbr1/P+f8/4kwCIkkm4CUDlMWz1t4qVTIv7/0yMxS1xhprrLHGGmusscYaHuP/LLvgZRDEiDTPYldBFpwYDkfLK8tEny+TjAAdSd+i10IGfByMEVz0YghA8O+DCWQWvR734QdmcItekNsQgRX5RGylqNywUagjtOhluQfBTt3+dkgQvItemGuI2ggsDP9hRUjkE3YW8sN/Wg3vv41TQWHRq3IRKQB2HHm4CtCNzKadwuKi1+UafLvIbOLEdEVsDMI+2N/DUZha9MLcQghg6QMgt+iVuYRMFhQwWqhDXPTa3AEHcmE8gcC/6LW5AdaHIu53DhQmFr06dyDiPMUQO4temzuIgv0NJxpXIqxheT/IOzFxFUyN4KNimKh7hFVIgDlRiFrLF6tFodfrKxYdKVwFKfV4xbijlG4uenVugGW5st/JlIYXvTp34E3lV1lIEbwi70DgaoQ0XiolsA4UroS/R0B04AkMLHplLiIQxxC4Yq0Zm0vcXKE61BB8aZK+wgo2niar+vHIylRoTEiP6NvPUOWVMaOTGLsM3Qum361OJXGM0COFMeQk0ZdikPN5VqRpMUQOmdPN7XAh7jVaifuglAqFggGOEzn0nyj89bRygCrzwzmassmsPnoPEMluRP1B8a/V0PBjHmHy/qVscSMcTmT3QG78WiQc+isj8mGnybtrTqRykUgeIfIOfZsIJ2MgHDN+IZ0M/G0xXQYg8vw48TRjbyM5/v7vSj2ysa3Z5FlR+lsiH085ZG/iPw9p//IP+XkyzrXEZyG77DSm3kYfSKTBxlLHPyFs8/dF2IkscY+Kfa3+mVD0l0pLysbgXjriBonAH1rK6TARBaIJzJDJa5DlivElszje2JC2vDsUAiCElmz+BjsE9RbsCMJectFUTWILNwT1NmTL4dISJR4+ft+xt/1q8KGl6QN4PFQuPJvCzUgixXMcH8z4U6mtVDa9A0pTxXuLX5IysneDisWmE5ePBXESh+ylYER5WVwNGYA4B7bmTo4VXm8CsMlpBGZT0xnh4UPRDYeu6h6v13kWCk8cbPq2HQl8Fw4+by8J6xCwbwYXHMPxweymkHQK1rZf0rf3O8RDqYU6xkA0BLyZLfzSNl5qCEV8YpJepEWNiUDkgth17bzmkxfw82KbiwvEWRAIZLAJ0yvjEQcSFzd8G9/Cd+1fxUADLH4jStTNVb8Au3EqOjLzJkYW3rIXD6vVEdfW/CJwCSqgFwP3AMhNeuz42942iBP7wkK6AFGKK+sE6k2YYcxm0Lnx5jfmc3YS8wsgMSoKST2jKID9dGa4ig2XVCZkpxCUXHjfl4ELU0OWBUGskDUWkQ6+2ohagLM3862JezZ8e4nhMrhHtUmD1DvXlpHBpCrz7ZXHs+lhGzv0aGOK4RzYersOPoLDcHGuw5uPO0SLjzFpmtvJuzmax2YWLKePGw7G07IovYj4Xd2TjokG58hEMT3cFxPZJPj8XXu2UXb5Ec4oYmSo4PpTdgu2h8zr5ILAdtJOYdb1x7D2HuS8AtQNr33zVoJA/C/YSZxTgdFLFaw6kiDSabCPqs6nbBPiMrYdB9tkHmXXxDmkiqIQoUq2whEhK2efqCZf6w/thsN2V0UsLrbX4Ig3pcrYQXVivthrexT56uIuhsA3Jr3TYCtVpsk9a4Q0hkKCQ9y++cnLCFghJakblj23u8Q74LhuEdHDBCwfaTi6S/JplGAXGkB4K4XH8rAyQaVHli2LK6EAko+0KX6IRHw4RiaTxxBIWDEC5qeVKI5khsECzMwhaeNmSWRIBt+CwANMGYw0hZYTmQiFwAaCCVyvlvyxLJbQjaAe4gpg4IWtdpamGVqtHb3vN5sqQzMszaqz/sYSB5OctBUBphv9Ml+h0tWjVltGUOT2caemMrP/xiqmBCv8wZx9K/qLImGVYo60rgZ/fjioyFCCEEp3fR81i4vmNPHdLjljGg3bhxJeErHRLH1Y0T5Khye9Wu/30UFbViA8UFR6xt9Z+t9JAkmiMMxwI1u2wZf9l4gMTfdlDR4PaPQdTVOM+umqKx/WTukZJFoMQIpEa9/w6l7AW/oJO5G9F0Xdn7oSPPg88QKtnshnvpm6aFHEKKFyjZgB1vMe9yIvqu8xTaVeadITbFdZptk9YWeRaDZwET7/iuU/A3tZG4W4uomvVq2e1s6rPlUXSySQQ5FEVpRSz5WzNnIRxus6dNdBMwNG/w1V/0lF7sN4vTqo1pixgloMnIdMKOwF8XzASiAm4/b9T0WuKBcXF9rtj9pJtddv/jOo/TM4HVR7wpfjLuxcXfZqtWatVuv3+5dHV5dXV53bo36TUdXeaa1z8KdzdHL7VYZQvvI9+kpLCkWRmbER+FTCXoOyR4knFQ0iGyl164osVyoVBf1QUdoVWflXbkBNMl6VtQpyiRB9U9F/p3LW1mBbq0AJWSLkKqEGFQUefmNGAm1J2rgIqarClr1IYwlKadqnSPCHyg4OOsr9oNkUBrBd16Ru87TmRX7vEmrXtzdHl73GhQRvmao6+G/v6lO1eitLvxv3t7etj3V43Lk/gzc+k301P9SfcL9dyhmRC2+Lu20qz1xd1KGAjMnDjXyCNI45Qm79Gtbhw0kVKVtPkfsMUrtvX/tQOuiphgYi/WM7laszFakkbMgq3YHwzuxBzAMaGzH3Gxg+o/Fiz/CtHSeVOmspdzTLMoeS3GNYdaBJ8Ij5coxce7evqu8VuYYMqHr96wDKUG58OFd1+4KM6VWlfsXQ542WzNI9WTtmTI7WMmUdcdnn+8thyoMeWLYX2W2pkyrV5b7Olnuo9GiVPoTSd51JvYakVfr0FVRq6LeulPr3r/1DpIlStzN0+EwHyuf0QOsqFFVT4IHZgWQtj3X5JBhu1LjDHRdoGfBiqshU3N42KeYOKk2VHiiS1G1VkbQOtHr9jLmBcg99DD/h3UWNYQbVloxMys/7AdLgqgKvEA/PGhR1LsFDxiSl1s/W5Y63B4CoB9cJmuAha3g+ihpArfsTyjWmBeEPmrmHkgYv7hABlNaByqBVR1JKfZHlZuOzqvvF5p1WqWqIQuZURorbhB/vaKb6AG/NgZz1sW63EfT3pETcEVfj8Ik+P6rqX/5R6lK7/u/H+zMJ3lCej0gNbw9benjWrimKD8nuORLSyt0JvP559+v2lGaO//31gP5SPVC+qvQXRbujqdaF0mFsK5iE28dM6u8ZwA64jkt76kXlEgkW3YNd+aGt3bdRbnRCDyo/Nfl9v+JDQcpBS4PVr3WI4u6mfPILts4UKN9QvvZ3+B+UdPSVym9aD+saFH2k1FvTebjnLoFGJFPAjsoOvQVaTVWu//uZUpn/yrClqtVjpY14yDA/NHhzX+moOnNbXQg1DQ4QP09bFx9RbijJ76lPSHE7DHOpwDsPTdVkCVJUExkgnylptD53x90seJi8YHdUDJMnmvJ8ONBg45PKXB5JR0i/1K+Ihzd6tHl53NaNJXP39QF+l6W61lFpFrlE5lP7T132oXyqDn+fdmC9UUUO4lTWZFWnUBqYloB/rmsYtbhE3K6IxwCx1rqWUEB22PhS+WFYHEWqP6g3R76eHlsjh1hpSo3Bt4ZWb7WrDOIp1b8/hg2GRuIK28hr1LXKFcOcKnUZsbgiwappCdZHb7rbKhka0U3szOBjcEEPDmVY12BdUYZr0+MS5lr+F9Y+V2sXFRRpIvvI3ML6fa9xqaLs9+DjtXZC01+R4n46upZbZ8fyWfNclmQvXYVQOTUtwRpMuUzhSEYCmCma8ZAJ4lSt09Azgj9G+kO9h/CYbsp1DYUuF3cfOsey/I2hbyH8KP2BZ1/oTxWlA09p5F10iVRrd43WfQNeaJJcpU9lXUMnYT31lQyFu7idI0/Ztp7qNU9uDy8Nv0j1FHhBU0eyJNXhRatxfHI6QPp3CGG/2VAeft7+gYfvNRX5eUlqGEbl81W38VDXgzzqXFdi0wqI8pBlR65+B2drJkptrK5eug0xfurJ9faApo/RYjtNn6rnvKyKKFRqNNu7hRUIDxs/GKaGUpGWHrbpYc8v9HlIcgdRqEl3Jndhjdrc5WHY4XwyA45BPmJO5ZRhB3K9fjEMdxCQu1Tu9XiMvjpQbnqI8B+ynkXRHlqtDhiqVml3byDTlBvdxlRv4S6FHDVlB/M7p78adFu3NEoaTpTuR+QYjddUqle5bCBKkOOkEINR8tQxIgPEXJQXo1zkd1dqn6g15EG0yaDGNrDgsrewycgkHPMYpHZI8Sj1Xr6uHI78N/1Nvj8bsAaxjE4mcocoFmeoZgV+7z7ojhSxkvY9KF9N3sJmxV2OafDN+0fMaJSwgzZ8kH4PCaSrlV+DycxPbbbOeh6W6VcO/zwJJj34X7M7tHWE3J7ImEbgrL1lKo2MiaQNQxSG/r8Bo05omBHdIGEeaNddrToWTP3FCUtjz2rczi08uBGTR8xsBdG/ZekC6drwB3x5mxl0Pjh3I2wlPvcn+MpTKJydbtPflf8cMNNsA1LZaZV9ezDlfmd9iq2ZXX9m1KPB+fSjzFRqWuvCnri5Xy912EZp4FlvMKu9NBV2Ct/ybs99xhOe0c2b1VyaAVu4SKCznsg7U0h+o64t4nB/E7uv7HxKN/ntOvYRTAJTWJg7uMYgfvmI3ZQSeIhvmiKSHqix1Rbc3/mAkCnlHSkkvAvC3rQkMp4oss7BKeFtuvbtK+7bNp8RmTkfxUb0TAC7nQHuD9R4dJfnePUI4elE+8wuoTkzT96RQLKjbfbHkRnX53axracRCA56Y9SfzPxlENjuTp0AwWE6++1RhPaSerPTvH6a2DAdC2xtWVJRotfvcHuqAWKamALW8weI+aYtHkzL9LNklAPjKogZbt4741hZIhYO0yohphAZ7EaESZAI3rKbVi9Mbnsehz9xbBLuDyqVgW1nF7kpb+8zju50W4DY/ZKVQveObbBC4EAJ110zwe0a3zaw1S9IZmogw+5Ns6bui1DZ3lknGh/GRdzYF0Eminnr24cLRGtCRiF9+mHWETfrJ7iAlEhyP4ZxbZq9vj4JN10iZrhlP0f2oMihoZyXkOIrCmTPxfA7P3iErHuGBrcBKUy4IDSaHs9PodC9HEoYHRxmBuFt3Py+8WVaF8o9FgZBEBNgED4xQhhquXVb7hP87rGQywcxRaF5HTHkJKZBKkOx7lQzuGwgb2fhvK6fd+Ih+oA9rOCKHHEJbw4znDSvI4XtBWigH75Nlccy9FaLLsbEmK2HkN6Z2w0mOAqNh4/jqTcmcEGejyZt5YQk4dsF2afjZ3QKzZ22mF6/YMUJ1oVeX9EIckJIKIOQrcJG+AysybwvDnYoX2ZcANseUhOKPhkZUb/I8lU2x1cM+0FKP/vNQl9knmcJs0Vj+GJbN+f5FCbnZfndcEzwbvMvt+7lQNgvgkRp0+Lu533w5VPshP9kxTKSsXgSgMT2C+tiQUMiuF1Lu+lNh9q+BrpNGfLuccuxmZMcKOWToBDeTKb0WNbzPIEte6gyH0B8j1Eec2F2MWeWi6Zle80HYXFZkN0PBd+B5Bav26bkdC0SKW8oGotluN1CwuPLeM3FksQS3QExgu71yxGQz3hDkRzKCIJlD0dFHQ8D85b1U+uHQVo+nYjxJh3cWcY7aEMR3VvoJ3OnIyBdBIVYIpbxi0mjSuYNx3YnLVDZonFlczCTXK7rZtjR0pPGrEQo8hiYIK3aixdAfjvmzwQ4UBbFQCa6lSnzfEAvGUw6d3ORpLAsN3iMwft1CfUhSxpNxILl7FN+kE5m+FgyXNIv28klU0+ERIpZfL8nXk4s1106I3gzQkC/H5fiLUHJTnIHmcRAMFPOpDK8f8sQxlzEsXFO8oiWN0LYSiZAZKMgevMj87H/GOSFkajugTAQ+Snd5CEcp8eXAj799jXjPoNRsWUnl9oAxQQoZPLvdo1hGA8/o4+1jBbUhBjIejlQDEbBzuPNHOnoBsgWOUScXwyIlM+fLxbyfy2BiHtPrelSKA6y4RExm4VsoTTrbqj00plQLJ6mYCKJ/USuOLYpxXxuezurC7Ifc34+wvZy+UBnCKmxt0CGJb0J8kgHc7HNUm4vHjeMqF8Q7TOdheW44umZELeL24YaPsll+GlkZSNn9xVx3r9U163NhB40i/FiDC+OGMTS/r9DCSch+IPekL+4k9oNZ2f5wZ353g7gIoSgPxlFAXgUmdjCU8i2XyrqoSoS3GigmC/uLmWY9hL4RD4YBqmMjiDPiZ7HxBnx+K8nbozoxHxYZq7XOcwNC7kSZ4011lhjjTXWWGONNdZYY4011lhjjTXWWGONNdZYYw3i+H+xoshVHLU1lAAAAABJRU5ErkJggg==')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),
                 
              ],
            ),
SizedBox(height: 8,),
            //! Row R2 and R2.1

            Row(
              children: [
                Expanded( //?R2
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('              STARBOY',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://upload.wikimedia.org/wikipedia/en/3/39/The_Weeknd_-_Starboy.png')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),

                Expanded( //?R2.1
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('              Weekend',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://thefader-res.cloudinary.com/private_images/w_760,c_limit,f_auto,q_auto:best/Untitled_tkisi5_vclzxj/the-weeknd-the-idol-final-album.jpg')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),
                
              ],
            ),
             SizedBox(height: 8,),

             //! Row R3 and R3.1

              Row(
              children: [
                Expanded( //?R3
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('         DIVINE',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://i.scdn.co/image/ab67616d00001e023f1acedcbf16cc9b155e5700')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),

                Expanded( //?R3.1
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('             Love mine',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://cdns-images.dzcdn.net/images/cover/1884f804fed656229c6848c85fea9950/264x264.jpg')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),
                 
              ],
            ),
            SizedBox(height: 8,),

            //! Row 4 and 4.1

            Row(
              children: [
                Expanded( //?R4
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('          Eticap',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://images.genius.com/d1661ebab2413eed9a703aa05377aa31.500x500x1.jpg')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),

                Expanded( //?R4.1
                  child: Stack(
                    children: [
                      Container(
                        
                        height: 60,
                        width: 125,
                        child: Center(child: Text('              Star Born',
                        style: TextStyle(color: Colors.white),)),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(174, 97, 97, 97),
                          borderRadius: BorderRadius.circular(16)
                        ),
                      ),
                       Container(
                        
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://m.media-amazon.com/images/M/MV5BNmE5ZmE3OGItNTdlNC00YmMxLWEzNjctYzAwOGQ5ODg0OTI0XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg')
                          ,fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(width: 8,)
                    ],
                  ),
                ),
                SizedBox(height: 8,), 
              ],
            ),
        ]
        ),
      ),
       
    );
  }
}
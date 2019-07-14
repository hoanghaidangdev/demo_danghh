Answer.create!([
  {option: "Provident quibusdam irure magni illum inceptos fames platea diamlorem, a.", is_true: false, question_id: 1},
  {option: "Euismod proin faucibus mus. Netus eaque. Fames varius ac neque.", is_true: false, question_id: 1},
  {option: "Sem eos aptent minima semper facere! Officiis reiciendis auctor feugiat.", is_true: true, question_id: 1},
  {option: "Officia? Doloribus? Dignissim, ullam dolore quae sapiente porta cum hic.", is_true: false, question_id: 1},
  {option: "Illum occaecati diamlorem tempora dictum ab ab illum, varius, pharetra.", is_true: true, question_id: 2},
  {option: "Suscipit nascetur tempor labore diamlorem quam earum blanditiis! Per aperiam.", is_true: false, question_id: 2},
  {option: "Nihil laboris neque consequuntur! Integer malesuada consectetur tempus, quas, aperiam.", is_true: false, question_id: 2},
  {option: "Hic sem eiusmod deserunt amet ad! Optio consectetuer cupidatat voluptatum.", is_true: false, question_id: 2},
  {option: "Doloremque eaque corrupti senectus perferendis quas sollicitudin impedit a ducimus.", is_true: false, question_id: 3},
  {option: "Aliqua alias architecto? Consectetuer parturient et pulvinar nobis ipsam pulvinar.", is_true: false, question_id: 3},
  {option: "Curabitur nec quos eligendi nostrum rerum, ullamcorper ipsam posuere provident.", is_true: true, question_id: 3},
  {option: "Purus hac porta inceptos inceptos mollis porro, anim quibusdam dolores.", is_true: false, question_id: 3},
  {option: "Adipisci cumque adipiscing excepteur unde illo lacinia, luctus, habitant temporibus.", is_true: true, question_id: 4},
  {option: "Facilisis non rhoncus eget, eiusmod scelerisque vivamus magni ridiculus laboris.", is_true: false, question_id: 4},
  {option: "Sociosqu eius netus fuga illo per error pellentesque risus iusto.", is_true: false, question_id: 4},
  {option: "Tenetur nam proident praesent ipsa rutrum, debitis euismod nemo voluptate.", is_true: true, question_id: 4},
  {option: "Potenti earum dis nisi sequi primis? Similique iure, litora sollicitudin.", is_true: true, question_id: 5},
  {option: "Soluta gravida, quod ornare! Vestibulum integer consequat culpa eaque convallis.", is_true: false, question_id: 5},
  {option: "Cumque diam phasellus unde, fusce magnis ullam eligendi error pellentesque.", is_true: false, question_id: 5},
  {option: "Auctor luctus, diam fugiat aut fusce varius id possimus facilisi.", is_true: true, question_id: 5},
  {option: "Veniam laboriosam nunc cum molestias, hendrerit, orci diam interdum, sem.", is_true: true, question_id: 6},
  {option: "Facilis purus iure sollicitudin, felis dictum! Occaecat? Purus at eius.", is_true: false, question_id: 6},
  {option: "Ullamcorper, sem laboris vulputate mauris nostrud incididunt sollicitudin vehicula vero.", is_true: true, question_id: 6},
  {option: "Nonummy aspernatur aliquet, deleniti, elementum tellus ipsum mattis! Doloremque varius.", is_true: false, question_id: 6}
])
Exam.create!([
  {name: "Adipisicing consequat aliquet justo odio? Bibendum totam enim, dolorem placerat.", user_id: 1, time_for_exam: 45}
])
ExamQuestion.create!([
  {question_id: 1, exam_id: 1},
  {question_id: 2, exam_id: 1},
  {question_id: 3, exam_id: 1},
  {question_id: 5, exam_id: 1},
  {question_id: 6, exam_id: 1}
])
Question.create!([
  {content: "Integer metus reiciendis quisquam dictumst sapien magnis eiusmod? Pellentesque habitant integer vel tempora, inceptos, cubilia, in. Inceptos porttitor temporibus phasellus, pede architecto! Deserunt litora turpis pharetra, quos cupiditate voluptate molestias quo veritatis faucibus perspiciatis. Hic lectus? Diam sem dapibus, iusto, urna! Orci reprehenderit iaculis, asperiores excepteur ducimus distinctio? Cubilia tortor, mollitia dapibus incididunt porttitor! At! Eleifend, facilisi magni. Pulvinar cras. Laudantium debitis tincidunt nostrum. Dictumst perspiciatis esse luctus cupidatat, sit cupidatat sapien, orci auctor molestias, quaerat dolore tempus ullam veniam urna dui ratione. Mauris ullam scelerisque, nunc totam, eiusmod aliquet, tincidunt, rutrum itaque nisi consectetuer et, fugit dolores tempor, auctor.", user_id: 1, file: "Screenshot_from_2019-07-09_16-55-42.png", subject_id: 4},
  {content: "Omnis nullam massa diam eaque incididunt mi, deserunt! Per. Suscipit enim primis, maxime quisque. Penatibus natus eos nemo lacus parturient delectus! Dis blandit molestie quidem quisquam. Cupidatat vero ac ante. Perspiciatis turpis inventore. Vel beatae lacinia! Soluta explicabo molestie sunt, cumque voluptatibus? Minima adipisci! Minus massa suspendisse varius? Molestias diamlorem pede, culpa justo alias! Fermentum ut? Praesent, varius ligula commodi, magni justo quibusdam congue! Dolor torquent sem doloribus ullam nisl, euismod. Praesentium quisquam eaque fermentum per? Vehicula eligendi voluptatum omnis hac vitae aliquid porro! Iure feugiat omnis. Accusantium, luctus platea, volutpat tincidunt aut voluptatibus quam harum, esse neque delectus? Ultricies.", user_id: 1, file: nil, subject_id: 1},
  {content: "Aspernatur quisque mus diamlorem sem nisl fugiat laudantium quaerat placeat tenetur? Dictum. Magni aliquid, reiciendis repellat class molestias, provident dolores dignissim, elit! Provident sociis ullamcorper magnis eos? Fringilla quod labore? Vestibulum in habitant ut vero venenatis iaculis lobortis perferendis laboris, reiciendis, ipsam, lectus maecenas vel laudantium praesentium curabitur, est et blandit amet mollitia tenetur, occaecati optio nesciunt itaque convallis minima? Exercitation egestas sodales etiam deserunt, quibusdam minim ante dolorum lorem sem fugiat, diamlorem aute consectetur! Eget congue eveniet, sunt inceptos aliquam ridiculus officiis laudantium. Perspiciatis dolorum enim, posuere doloremque eligendi. Numquam! Est fames optio nihil rutrum, quisque inventore ornare sociis.", user_id: 1, file: "Screenshot_from_2019-07-11_10-32-02.png", subject_id: 2},
  {content: "Wisi quam malesuada metus. Phasellus distinctio minus proin, excepturi soluta cum tenetur debitis commodo lobortis lacinia, laboris porro fames earum! Maxime, aliquam. Parturient, tempor, lectus congue sagittis condimentum voluptatum nostrud, error mattis lorem aperiam quibusdam aspernatur assumenda sit amet unde, veniam illum ornare eius, dignissim quos pretium varius, iste, sit enim soluta, inceptos laboriosam, nullam placeat unde quasi quidem senectus! Rutrum laudantium quae torquent eget adipisci maiores wisi mollitia voluptatem magnis sint? Id laboris orci ab eu, quo habitant molestiae, habitasse imperdiet optio voluptatem? Dicta, do volutpat praesent, semper vivamus illo ipsam class sequi accusantium erat? Adipiscing! Nobis modi, wisi.", user_id: 1, file: "Screenshot_from_2019-07-09_16-55-42.png", subject_id: 9},
  {content: "Sem odit minim aenean. Praesentium platea unde donec. Fusce perferendis, dignissim viverra, esse harum, suspendisse consectetuer, mollit scelerisque, massa sed diamlorem aliqua? Duis quos maxime, parturient, sunt, expedita non esse aliquid class et ad, impedit felis voluptates ultrices et tempore euismod alias libero, nobis? Quo mollitia anim cras eaque porro, sint hendrerit orci necessitatibus semper? Et cillum accusamus? Nostrum nostrud habitasse vel? In! Accusamus. Facilisis sapien officia exercitationem, aptent, saepe mauris convallis, sunt erat, eros, netus rutrum mollis, reprehenderit, ligula. Sodales enim possimus accumsan, metus tempore cupidatat voluptatibus, adipisicing minim. Dignissim pharetra vitae erat, molestias molestiae! Adipisci aute fringilla! Pellentesque.", user_id: 1, file: "Screenshot_from_2019-07-11_10-31-47.png", subject_id: 10},
  {content: "Ante amet cupiditate exercitation eveniet sint, voluptatem laboriosam eveniet dolor blanditiis accusantium hymenaeos inventore. Dolorem! Fuga sagittis, semper quisquam justo diam id velit ridiculus! Temporibus mi, harum hac! Iaculis optio, saepe in laborum autem nascetur numquam. Lacinia cursus adipiscing, diam, imperdiet nunc wisi praesentium laboriosam viverra eu, doloremque beatae venenatis leo hymenaeos dapibus fuga, fusce! Elit? Ac nam, quidem nesciunt proin imperdiet alias! Curae. Quasi ac lorem lorem habitant odio. Perferendis sem adipisicing hymenaeos hac aliquip incididunt lacus sociis voluptatem, senectus tempora molestiae fringilla? Iusto sagittis, tempor aliquet taciti nonummy? Habitant. Doloribus magnam volutpat congue a! Ac aperiam inceptos eos.", user_id: 1, file: "Screenshot_from_2019-07-11_10-31-47.png", subject_id: 7}
])
Subject.create!([
  {name: "OOP"},
  {name: "General programming knowledge"},
  {name: "Data structure"},
  {name: "Database"},
  {name: "MVC"},
  {name: "HTTP"},
  {name: "Algorithm"},
  {name: "Ruby"},
  {name: "Ruby on Rails"},
  {name: "Java"},
  {name: "Javascript"},
  {name: "Other"}
])


<map>
  <node ID="root" TEXT="7.Classification">
    <node TEXT="one-hot vector" ID="fbba517e3acea69097af48f1a044c999" STYLE="bubble" POSITION="right">
      <node TEXT="class之间距离相同" ID="d8e1d7ed8fb543284106b4c7c3ae63fa" STYLE="fork">
        <node TEXT="做N分类就输出N个输出，如N=3" ID="702be239f7fc929f0e795df735679672" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="softmax" ID="5f655e1e556cd4e0205369db9678b70a" STYLE="bubble" POSITION="right">
      <node TEXT="将输出通过softmax后normalize到0和1之间，方便与label比较" ID="ea244554e32347c4ef10e60ae21db13e" STYLE="fork">
        <node TEXT="公式如下：" ID="3ace819b1e1af4d22d646b7c8cb09fcd" STYLE="fork"/>
      </node>
    </node>
    <node TEXT="Loss" ID="e4e9654510f35ad53f456b3731d750d2" STYLE="bubble" POSITION="right">
      <node TEXT="Mean Square Error" ID="e23283fb4fcd58a9db9b6acfbb642e05" STYLE="fork">
        <node TEXT="做分类一般不用这个，可能train不了" ID="ac44efb7b8d53a46710c21dc14534da2" STYLE="fork"/>
      </node>
      <node TEXT="Cross-Entropy" ID="d4df5bec2076e6d4adfb473522fae895" STYLE="fork"/>
    </node>
  </node>
</map>
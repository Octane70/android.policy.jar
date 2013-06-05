.class public Lcom/samsung/voiceshell/MultipleWakeUp;
.super Ljava/lang/Object;
.source "MultipleWakeUp.java"


# static fields
.field private static final BookmarkShortcut_filePath:Ljava/lang/String; = "/data/data/com.vlingo.midas/files/wakeupdata_BookmarkShortcut.txt"

.field private static final CAMERA_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.camera.Camera"

.field private static final CAMERA_PACKAGE:Ljava/lang/String; = "com.sec.android.app.camera"

.field private static final DirectDial_filePath:Ljava/lang/String; = "/data/data/com.vlingo.midas/files/wakeupdata_DirectDial.txt"

.field private static final DirectMessage_filePath:Ljava/lang/String; = "/data/data/com.vlingo.midas/files/wakeupdata_DirectMessage.txt"

.field private static final FM_CLASS_NAME:Ljava/lang/String; = "com.sec.android.app.fm.MainActivity"

.field private static final FM_PACKAGE:Ljava/lang/String; = "com.sec.android.app.fm"

.field private static final NavigationShortcut_filePath:Ljava/lang/String; = "/data/data/com.vlingo.midas/files/wakeupdata_NavigationShortcut.txt"

.field private static final OpenApplication_filePath:Ljava/lang/String; = "/data/data/com.vlingo.midas/files/wakeupdata_OpenApplication.txt"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMultipleWakeUpIntent(I)Landroid/content/Intent;
    .registers 10
    .parameter "intentType"

    .prologue
    const/4 v5, 0x0

    const/high16 v8, 0x1020

    const/4 v7, 0x1

    .line 30
    const/4 v1, 0x0

    .line 31
    .local v1, intent:Landroid/content/Intent;
    const-string v2, ""

    .line 32
    .local v2, results:Ljava/lang/String;
    const/4 v0, 0x0

    .line 34
    .local v0, Uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_128

    .line 130
    :goto_b
    :pswitch_b
    return-object v1

    .line 37
    :pswitch_c
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 38
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_b

    .line 42
    :pswitch_14
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 48
    :pswitch_21
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 49
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.camera"

    const-string v6, "com.sec.android.app.camera.Camera"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 51
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_b

    .line 56
    :pswitch_3d
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "com.android.calendar"

    const-string v5, "com.android.calendar.AllInOneActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_b

    .line 62
    :pswitch_4c
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "playMusic"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_b

    .line 68
    :pswitch_59
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.fm"

    const-string v6, "com.sec.android.app.fm.MainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    const-string v4, "playback"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const/high16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 73
    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 74
    const/high16 v4, 0x2

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_b

    .line 79
    :pswitch_86
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 81
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.sec.android.app.voicerecorder"

    const-string v6, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_b

    .line 91
    :pswitch_a3
    const-string v4, "/data/data/com.vlingo.midas/files/wakeupdata_DirectDial.txt"

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 92
    const-string v4, "tel"

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 93
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.CALL"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 94
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 98
    :pswitch_b8
    const-string v4, "/data/data/com.vlingo.midas/files/wakeupdata_DirectMessage.txt"

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    const-string v4, "sms"

    invoke-static {v4, v2, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 101
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 105
    :pswitch_cd
    const-string v4, "/data/data/com.vlingo.midas/files/wakeupdata_BookmarkShortcut.txt"

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 107
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 108
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 112
    :pswitch_e0
    const-string v4, "/data/data/com.vlingo.midas/files/wakeupdata_NavigationShortcut.txt"

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "google.navigation:q="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 114
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 115
    .restart local v1       #intent:Landroid/content/Intent;
    goto/16 :goto_b

    .line 119
    :pswitch_106
    const-string v4, "/data/data/com.vlingo.midas/files/wakeupdata_OpenApplication.txt"

    invoke-static {v4}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 120
    const-string v4, "\\|"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 121
    .local v3, str:[Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .restart local v1       #intent:Landroid/content/Intent;
    new-instance v4, Landroid/content/ComponentName;

    const/4 v5, 0x0

    aget-object v5, v3, v5

    aget-object v6, v3, v7

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_b

    .line 34
    :pswitch_data_128
    .packed-switch 0x0
        :pswitch_c
        :pswitch_14
        :pswitch_21
        :pswitch_3d
        :pswitch_4c
        :pswitch_59
        :pswitch_86
        :pswitch_b
        :pswitch_b
        :pswitch_a3
        :pswitch_b8
        :pswitch_cd
        :pswitch_e0
        :pswitch_106
    .end packed-switch
.end method

.method public static getMultipleWakeUpIntent(ILandroid/content/Context;)Landroid/content/Intent;
    .registers 15
    .parameter "intentType"
    .parameter "context"

    .prologue
    const/4 v8, 0x0

    const/high16 v12, 0x1020

    const/high16 v11, 0x1000

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 135
    const/4 v3, 0x0

    .line 136
    .local v3, intent:Landroid/content/Intent;
    const-string v5, ""

    .line 137
    .local v5, results:Ljava/lang/String;
    const/4 v0, 0x0

    .line 139
    .local v0, Uri:Landroid/net/Uri;
    packed-switch p0, :pswitch_data_170

    .line 259
    :goto_e
    :pswitch_e
    return-object v3

    .line 142
    :pswitch_f
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "com.android.phone.action.RECENT_CALLS"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_e

    .line 147
    :pswitch_17
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "vnd.android-dir/mms-sms"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    .line 153
    :pswitch_24
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 154
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.camera"

    const-string v9, "com.sec.android.app.camera.Camera"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 156
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_e

    .line 161
    :pswitch_40
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "com.android.calendar"

    const-string v8, "com.android.calendar.AllInOneActivity"

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_e

    .line 168
    :pswitch_4f
    :try_start_4f
    new-instance v4, Landroid/content/Intent;

    const-string v7, "com.sec.android.music.intent.action.PLAY"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_56
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4f .. :try_end_56} :catch_66

    .line 169
    .end local v3           #intent:Landroid/content/Intent;
    .local v4, intent:Landroid/content/Intent;
    :try_start_56
    const-string v7, "launchMusicPlayer"

    const/4 v8, 0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 170
    const/high16 v7, 0x1000

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 171
    invoke-virtual {p1, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_64
    .catch Landroid/content/ActivityNotFoundException; {:try_start_56 .. :try_end_64} :catch_16b

    .line 172
    const/4 v3, 0x0

    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto :goto_e

    .line 173
    :catch_66
    move-exception v2

    .line 174
    .local v2, e:Landroid/content/ActivityNotFoundException;
    :goto_67
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "sec.musicplayer.PLAYBACK_VIEWER"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 175
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "playMusic"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_e

    .line 181
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :pswitch_74
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.fm"

    const-string v9, "com.sec.android.app.fm.MainActivity"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 184
    const-string v7, "playback"

    invoke-virtual {v3, v7, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 185
    const/high16 v7, 0x20

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {v3, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 187
    const/high16 v7, 0x2

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto/16 :goto_e

    .line 192
    :pswitch_a0
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    invoke-virtual {v3, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 195
    new-instance v7, Landroid/content/ComponentName;

    const-string v8, "com.sec.android.app.voicerecorder"

    const-string v9, "com.sec.android.app.voicerecorder.VoiceRecorderMainActivity"

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_e

    .line 204
    :pswitch_bd
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "driving_mode_on"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 205
    .local v1, drivingMode:I
    if-nez v1, :cond_e5

    .line 206
    const/4 v1, 0x1

    .line 210
    :goto_ca
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "driving_mode_on"

    invoke-static {v7, v8, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v7, "DrivingMode"

    invoke-virtual {v3, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 214
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 215
    const/4 v3, 0x0

    .line 216
    goto/16 :goto_e

    .line 208
    :cond_e5
    const/4 v1, 0x0

    goto :goto_ca

    .line 220
    .end local v1           #drivingMode:I
    :pswitch_e7
    const-string v7, "/data/data/com.vlingo.midas/files/wakeupdata_DirectDial.txt"

    invoke-static {v7}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 221
    const-string v7, "tel"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 222
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.CALL"

    invoke-direct {v3, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 223
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_e

    .line 227
    :pswitch_fc
    const-string v7, "/data/data/com.vlingo.midas/files/wakeupdata_DirectMessage.txt"

    invoke-static {v7}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 228
    const-string v7, "sms"

    invoke-static {v7, v5, v8}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 229
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.SENDTO"

    invoke-direct {v3, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_e

    .line 234
    :pswitch_111
    const-string v7, "/data/data/com.vlingo.midas/files/wakeupdata_BookmarkShortcut.txt"

    invoke-static {v7}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 235
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 236
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_e

    .line 241
    :pswitch_124
    const-string v7, "/data/data/com.vlingo.midas/files/wakeupdata_NavigationShortcut.txt"

    invoke-static {v7}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 242
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "google.navigation:q="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 243
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v3, v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 244
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_e

    .line 248
    :pswitch_14a
    const-string v7, "/data/data/com.vlingo.midas/files/wakeupdata_OpenApplication.txt"

    invoke-static {v7}, Lcom/samsung/voiceshell/MultipleWakeUp;->readDataFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 249
    const-string v7, "\\|"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 250
    .local v6, str:[Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    .end local v3           #intent:Landroid/content/Intent;
    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    .restart local v3       #intent:Landroid/content/Intent;
    new-instance v7, Landroid/content/ComponentName;

    aget-object v8, v6, v9

    aget-object v9, v6, v10

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto/16 :goto_e

    .line 173
    .end local v3           #intent:Landroid/content/Intent;
    .end local v6           #str:[Ljava/lang/String;
    .restart local v4       #intent:Landroid/content/Intent;
    :catch_16b
    move-exception v2

    move-object v3, v4

    .end local v4           #intent:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/content/Intent;
    goto/16 :goto_67

    .line 139
    nop

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_f
        :pswitch_17
        :pswitch_24
        :pswitch_40
        :pswitch_4f
        :pswitch_74
        :pswitch_a0
        :pswitch_e
        :pswitch_bd
        :pswitch_e7
        :pswitch_fc
        :pswitch_111
        :pswitch_124
        :pswitch_14a
    .end packed-switch
.end method

.method public static readDataFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .parameter "filepath"

    .prologue
    .line 264
    const/4 v2, 0x0

    .line 265
    .local v2, reader:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 268
    .local v4, results:Ljava/lang/String;
    :try_start_3
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_2a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_2f

    .line 269
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :goto_d
    :try_start_d
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-eqz v1, :cond_25

    .line 270
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_d

    .line 272
    :cond_25
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_28} :catch_37
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_28} :catch_34

    move-object v2, v3

    .line 280
    .end local v1           #line:Ljava/lang/String;
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_29
    return-object v4

    .line 274
    :catch_2a
    move-exception v0

    .line 275
    .local v0, e:Ljava/io/FileNotFoundException;
    :goto_2b
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_29

    .line 276
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_2f
    move-exception v0

    .line 277
    .local v0, e:Ljava/io/IOException;
    :goto_30
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_29

    .line 276
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_34
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_30

    .line 274
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_37
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2b
.end method

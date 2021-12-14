.class public Lcom/android/server/notification/NotificationShellCmd;
.super Landroid/os/ShellCommand;
.source "NotificationShellCmd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationShellCmd$ShellNls;
    }
.end annotation


# static fields
.field public static final CHANNEL_ID:Ljava/lang/String; = "shell_cmd"

.field public static final CHANNEL_IMP:I = 0x3

.field public static final CHANNEL_NAME:Ljava/lang/String; = "Shell command"

.field public static final NOTIFICATION_ID:I = 0x7e4

.field private static final NOTIFY_USAGE:Ljava/lang/String; = "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

.field private static final TAG:Ljava/lang/String; = "NotifShellCmd"

.field private static final USAGE:Ljava/lang/String; = "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"


# instance fields
.field private final mBinderService:Landroid/app/INotificationManager;

.field private mChannel:Landroid/app/NotificationChannel;

.field private final mDirectService:Lcom/android/server/notification/NotificationManagerService;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getBinderService()Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v10, p2

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    new-instance v0, Landroid/app/Notification$Builder;

    const-string/jumbo v3, "shell_cmd"

    invoke-direct {v0, v11, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v0

    const/4 v0, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v14, v0

    move-object v15, v3

    move-object v9, v4

    move-object/from16 v16, v6

    move-object v6, v8

    move-object v8, v5

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextOption()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    const-string/jumbo v3, "usage: cmd notification post [flags] <tag> <text>\n\nflags:\n  -h|--help\n  -v|--verbose\n  -t|--title <text>\n  -i|--icon <iconspec>\n  -I|--large-icon <iconspec>\n  -S|--style <style> [styleargs]\n  -c|--content-intent <intentspec>\n\nstyles: (default none)\n  bigtext\n  bigpicture --picture <iconspec>\n  inbox --line <text> --line <text> ...\n  messaging --conversation <title> --message <who>:<text> ...\n  media\n\nan <iconspec> is one of\n  file:///data/local/tmp/<img.png>\n  content://<provider>/<path>\n  @[<package>:]drawable/<img>\n  data:base64,<B64DATA==>\n\nan <intentspec> is (broadcast|service|activity) <args>\n  <args> are as described in `am start`"

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v18

    const/16 v19, 0x4

    const/16 v20, 0x3

    sparse-switch v18, :sswitch_data_0

    :cond_0
    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v4, "large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v4, "--verbose"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_2

    :sswitch_2
    const-string v4, "--line"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x18

    goto/16 :goto_2

    :sswitch_3
    const-string v4, "--icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xb

    goto/16 :goto_2

    :sswitch_4
    const-string v4, "--help"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1c

    goto/16 :goto_2

    :sswitch_5
    const-string v4, "--bigtext"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x15

    goto/16 :goto_2

    :sswitch_6
    const-string v4, "--bigText"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x14

    goto/16 :goto_2

    :sswitch_7
    const-string v4, "--largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x7

    goto/16 :goto_2

    :sswitch_8
    const-string v4, "--intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x10

    goto/16 :goto_2

    :sswitch_9
    const-string v4, "--picture"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x17

    goto/16 :goto_2

    :sswitch_a
    const-string/jumbo v4, "largeicon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x8

    goto/16 :goto_2

    :sswitch_b
    const-string v4, "--content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xe

    goto/16 :goto_2

    :sswitch_c
    const-string v4, "--big-text"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x16

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v4, "title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v4, v19

    goto/16 :goto_2

    :sswitch_e
    const-string v4, "--wtf"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1d

    goto/16 :goto_2

    :sswitch_f
    const-string v4, "icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xc

    goto/16 :goto_2

    :sswitch_10
    const-string v4, "-v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    goto/16 :goto_2

    :sswitch_11
    const-string v4, "-t"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    goto/16 :goto_2

    :sswitch_12
    const-string v4, "-i"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xa

    goto/16 :goto_2

    :sswitch_13
    const-string v4, "-h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1b

    goto/16 :goto_2

    :sswitch_14
    const-string v4, "-c"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xd

    goto/16 :goto_2

    :sswitch_15
    const-string v4, "-S"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x12

    goto :goto_2

    :sswitch_16
    const-string v4, "-I"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x5

    goto :goto_2

    :sswitch_17
    const-string v4, "--large-icon"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x6

    goto :goto_2

    :sswitch_18
    const-string v4, "--conversation"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x1a

    goto :goto_2

    :sswitch_19
    const-string v4, "intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x11

    goto :goto_2

    :sswitch_1a
    const-string v4, "content-intent"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0xf

    goto :goto_2

    :sswitch_1b
    const-string v4, "--title"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move/from16 v4, v20

    goto :goto_2

    :sswitch_1c
    const-string v4, "--style"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x13

    goto :goto_2

    :sswitch_1d
    const-string v4, "--message"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x19

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4

    :pswitch_0
    if-eqz v7, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/app/Notification$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto/16 :goto_c

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "--conversation requires --style messaging"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_1
    if-eqz v7, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    move/from16 v23, v0

    const/4 v0, 0x2

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v0, v4

    move-object/from16 v17, v3

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    aget-object v0, v4, v3

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v3, 0x0

    aget-object v3, v4, v3

    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    :cond_2
    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x0

    aget-object v0, v4, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v18, v4

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getUserDisplayName()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v4, v20

    const-string v19, "Them"

    const/16 v22, 0x1

    aput-object v19, v4, v22

    invoke-virtual {v7}, Landroid/app/Notification$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    rem-int/lit8 v19, v19, 0x2

    aget-object v3, v4, v19

    invoke-virtual {v7, v0, v5, v6, v3}, Landroid/app/Notification$MessagingStyle;->addMessage(Ljava/lang/CharSequence;JLjava/lang/CharSequence;)Landroid/app/Notification$MessagingStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    :cond_3
    move/from16 v23, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--message requires --style messaging"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    if-eqz v8, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--line requires --style inbox"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    if-eqz v15, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v12, v0}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v5, :cond_5

    move-object v5, v4

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    :cond_5
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v3

    const-string/jumbo v3, "not a bitmap: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_6
    move-object/from16 v17, v3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bad picture spec: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--picture requires --style bigpicture"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_4
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    if-eqz v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto/16 :goto_c

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "--bigtext requires --style bigtext"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x2

    const/16 v22, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_9
    goto :goto_3

    :sswitch_1e
    const-string/jumbo v3, "media"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v4, v19

    goto :goto_4

    :sswitch_1f
    const-string v4, "inbox"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v3

    goto :goto_4

    :sswitch_20
    const-string v3, "bigpicture"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v4, v22

    goto :goto_4

    :sswitch_21
    const-string v3, "bigtext"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v4, 0x0

    goto :goto_4

    :sswitch_22
    const-string/jumbo v3, "messaging"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    move/from16 v4, v20

    goto :goto_4

    :goto_3
    const/4 v4, -0x1

    :goto_4
    packed-switch v4, :pswitch_data_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unrecognized notification style: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_6
    new-instance v3, Landroid/app/Notification$MediaStyle;

    invoke-direct {v3}, Landroid/app/Notification$MediaStyle;-><init>()V

    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-object/from16 v16, v3

    goto :goto_5

    :pswitch_7
    const-string v3, "You"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    const-string v5, "--user"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    :cond_a
    new-instance v4, Landroid/app/Notification$MessagingStyle;

    new-instance v5, Landroid/app/Person$Builder;

    invoke-direct {v5}, Landroid/app/Person$Builder;-><init>()V

    invoke-virtual {v5, v3}, Landroid/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroid/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Person$Builder;->build()Landroid/app/Person;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/Notification$MessagingStyle;-><init>(Landroid/app/Person;)V

    move-object v7, v4

    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_5

    :pswitch_8
    new-instance v3, Landroid/app/Notification$InboxStyle;

    invoke-direct {v3}, Landroid/app/Notification$InboxStyle;-><init>()V

    move-object v8, v3

    invoke-virtual {v13, v8}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_5

    :pswitch_9
    new-instance v3, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    move-object v15, v3

    invoke-virtual {v13, v15}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_5

    :pswitch_a
    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    move-object v9, v3

    invoke-virtual {v13, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    nop

    :goto_5
    move-object/from16 v6, v24

    move-object/from16 v20, v25

    goto/16 :goto_d

    :pswitch_b
    move/from16 v23, v0

    move-object/from16 v25, v5

    move-object/from16 v24, v6

    const/4 v3, 0x2

    const/16 v22, 0x1

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const-string/jumbo v6, "service"

    const-string v3, "broadcast"

    sparse-switch v5, :sswitch_data_2

    :cond_b
    goto :goto_6

    :sswitch_23
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    move/from16 v4, v22

    goto :goto_7

    :sswitch_24
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x0

    goto :goto_7

    :sswitch_25
    const-string v5, "activity"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v4, 0x2

    goto :goto_7

    :goto_6
    const/4 v4, -0x1

    :goto_7
    packed-switch v4, :pswitch_data_2

    goto :goto_8

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0

    :goto_8
    const/4 v4, 0x0

    invoke-static {v1, v4}, Landroid/content/Intent;->parseCommandArgs(Landroid/os/ShellCommand;Landroid/content/Intent$CommandOptionHandler;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v7

    const-string/jumbo v7, "xyz:"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_9

    :cond_c
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    :goto_9
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/high16 v4, 0xa000000

    if-eqz v3, :cond_d

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    invoke-static {v11, v7, v5, v4, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v17, v5

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto :goto_a

    :cond_d
    const/4 v7, 0x0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-static {v11, v7, v5, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v17, v5

    move-object/from16 v26, v24

    move-object/from16 v20, v25

    goto :goto_a

    :cond_e
    const/4 v4, 0x0

    const/high16 v6, 0xa000000

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v3, v11

    move-object/from16 v17, v5

    move-object/from16 v20, v25

    move-object/from16 v26, v24

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v3

    :goto_a
    invoke-virtual {v13, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    goto :goto_c

    :pswitch_d
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    goto :goto_b

    :pswitch_e
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const/4 v0, 0x1

    :goto_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v12, v3}, Lcom/android/server/notification/NotificationShellCmd;->parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;

    move-result-object v4

    if-nez v4, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error: invalid icon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    goto :goto_c

    :cond_10
    move-object v5, v4

    move-object v6, v5

    move-object/from16 v7, v18

    move-object/from16 v8, v19

    goto :goto_d

    :pswitch_f
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    nop

    :goto_c
    move-object/from16 v7, v18

    move-object/from16 v8, v19

    move-object/from16 v6, v26

    goto :goto_d

    :pswitch_10
    move/from16 v23, v0

    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const/4 v0, 0x1

    move v14, v0

    :goto_d
    goto/16 :goto_0

    :cond_11
    move-object/from16 v20, v5

    move-object/from16 v26, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v8

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v8, :cond_18

    if-nez v7, :cond_12

    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v21, v26

    goto/16 :goto_13

    :cond_12
    invoke-virtual {v13, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-object/from16 v6, v26

    if-nez v6, :cond_13

    const v0, 0x1080077

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    goto :goto_e

    :cond_13
    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setSmallIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    :goto_e
    move/from16 v5, p3

    invoke-virtual {v1, v10, v5}, Lcom/android/server/notification/NotificationShellCmd;->ensureChannel(Ljava/lang/String;I)V

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting:\n  "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "posting: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "NotificationManager"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/16 v17, 0x7e4

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v22

    move-object/from16 v23, v3

    move-object v3, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p2

    move-object/from16 v21, v6

    move-object v6, v8

    move-object/from16 v24, v7

    move/from16 v7, v17

    move-object/from16 v27, v8

    move-object/from16 v8, v23

    move-object/from16 v25, v9

    move/from16 v9, v22

    invoke-interface/range {v3 .. v9}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    if-eqz v14, :cond_17

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x7e4

    move-object/from16 v5, v27

    invoke-virtual {v0, v10, v5, v4, v3}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v0

    const/4 v3, 0x3

    move/from16 v28, v3

    move-object v3, v0

    move/from16 v0, v28

    :goto_f
    add-int/lit8 v6, v0, -0x1

    if-lez v0, :cond_15

    if-eqz v3, :cond_14

    goto :goto_11

    :cond_14
    :try_start_0
    const-string/jumbo v0, "waiting for notification to post..."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-wide/16 v7, 0x1f4

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    move-exception v0

    :goto_10
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-static/range {p3 .. p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v0, v10, v5, v4, v7}, Lcom/android/server/notification/NotificationManagerService;->findNotificationLocked(Ljava/lang/String;Ljava/lang/String;II)Lcom/android/server/notification/NotificationRecord;

    move-result-object v3

    move v0, v6

    goto :goto_f

    :cond_15
    :goto_11
    if-nez v3, :cond_16

    const-string/jumbo v0, "warning: couldn\'t find notification after enqueueing"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    goto :goto_12

    :cond_16
    const-string/jumbo v0, "posted: "

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v0, v11, v4}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto :goto_12

    :cond_17
    move-object/from16 v5, v27

    const/4 v4, 0x0

    :goto_12
    return v4

    :cond_18
    move-object/from16 v24, v7

    move-object v5, v8

    move-object/from16 v25, v9

    move-object/from16 v21, v26

    :goto_13
    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x74789999 -> :sswitch_1d
        -0x603263ef -> :sswitch_1c
        -0x60295f48 -> :sswitch_1b
        -0x4821dd90 -> :sswitch_1a
        -0x468ec964 -> :sswitch_19
        -0x32dd8ddd -> :sswitch_18
        -0x2bc1295 -> :sswitch_17
        0x5bc -> :sswitch_16
        0x5c6 -> :sswitch_15
        0x5d6 -> :sswitch_14
        0x5db -> :sswitch_13
        0x5dc -> :sswitch_12
        0x5e7 -> :sswitch_11
        0x5e9 -> :sswitch_10
        0x313c79 -> :sswitch_f
        0x2906389 -> :sswitch_e
        0x6942258 -> :sswitch_d
        0x2a056f7a -> :sswitch_c
        0x2a13d010 -> :sswitch_b
        0x2d3ae234 -> :sswitch_a
        0x302cc35e -> :sswitch_9
        0x487e843c -> :sswitch_8
        0x4a573094 -> :sswitch_7
        0x4bbf1cad -> :sswitch_6
        0x4bcda88d -> :sswitch_5
        0x4f7504e1 -> :sswitch_4
        0x4f757219 -> :sswitch_3
        0x4f76e594 -> :sswitch_2
        0x6789dfe2 -> :sswitch_1
        0x76d66fcb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x55d4c8fc -> :sswitch_22
        -0x6cebdd3 -> :sswitch_21
        -0x2a7c002 -> :sswitch_20
        0x5fb2286 -> :sswitch_1f
        0x62f6fe4 -> :sswitch_1e
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x62b40cf1 -> :sswitch_25
        -0x607e173f -> :sswitch_24
        0x7643c6b5 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-eqz v1, :cond_0

    const-string v1, "NotifShellCmd"

    const-string v2, "Bound Shell NLS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->getSnoozedNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-boolean v1, p1, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->isConnected:Z

    if-nez v1, :cond_0

    const-string v1, "NotifShellCmd"

    const-string v2, "Unbound Shell NLS"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-wide/16 v1, 0x64

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected checkShellCommandPermission(I)Z
    .locals 1

    if-eqz p1, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method ensureChannel(Ljava/lang/String;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/app/NotificationChannel;

    const-string/jumbo v1, "shell_cmd"

    const-string v2, "Shell command"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, v3}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "created channel: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-interface {v3, p1, v4, p1, v1}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCommand(Ljava/lang/String;)I
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    const-string v7, "NotifShellCmd"

    const/4 v8, 0x0

    if-nez v4, :cond_1

    :try_start_0
    const-string/jumbo v0, "root"

    move-object v3, v0

    goto :goto_0

    :cond_1
    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v9, v0

    if-lez v9, :cond_2

    aget-object v9, v0, v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v9

    :cond_2
    :goto_0
    nop

    :goto_1
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    :catchall_0
    move-exception v0

    move-wide/from16 v24, v5

    goto/16 :goto_16

    :catch_0
    move-exception v0

    :try_start_1
    const-string v9, "failed to get caller pkg"

    invoke-static {v7, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    nop

    goto :goto_1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v9

    invoke-virtual {v1, v4}, Lcom/android/server/notification/NotificationShellCmd;->checkShellCommandPermission(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "error: permission denied: callingUid="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " callingPackage="

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0xff

    return v0

    :cond_3
    const/16 v0, 0x2d

    const/16 v7, 0x5f

    :try_start_2
    invoke-virtual {v2, v0, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    const/4 v13, 0x2

    const/4 v15, 0x1

    sparse-switch v7, :sswitch_data_0

    :cond_4
    goto/16 :goto_3

    :sswitch_0
    :try_start_3
    const-string v7, "allow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_4

    :sswitch_1
    const-string/jumbo v7, "set_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v8

    goto/16 :goto_4

    :sswitch_2
    const-string v7, "disallow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    goto/16 :goto_4

    :sswitch_3
    const-string/jumbo v7, "reset_assistant_user_set"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x7

    goto/16 :goto_4

    :sswitch_4
    const-string v7, "allow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v15

    goto/16 :goto_4

    :sswitch_5
    const-string/jumbo v7, "set_bubbles"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    goto/16 :goto_4

    :sswitch_6
    const-string/jumbo v7, "post"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xb

    goto/16 :goto_4

    :sswitch_7
    const-string/jumbo v7, "list"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xd

    goto/16 :goto_4

    :sswitch_8
    const-string v7, "get"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xe

    goto/16 :goto_4

    :sswitch_9
    const-string/jumbo v7, "unsnooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x10

    goto :goto_4

    :sswitch_a
    const-string v7, "get_approved_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    goto :goto_4

    :sswitch_b
    const-string v7, "disallow_dnd"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v13

    goto :goto_4

    :sswitch_c
    const-string v7, "allow_listener"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_4

    :sswitch_d
    const-string/jumbo v7, "snooze"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x11

    goto :goto_4

    :sswitch_e
    const-string/jumbo v7, "notify"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    goto :goto_4

    :sswitch_f
    const-string v7, "disallow_assistant"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    goto :goto_4

    :sswitch_10
    const-string/jumbo v7, "set_bubbles_channel"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    goto :goto_4

    :sswitch_11
    const-string/jumbo v7, "snoozed"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_4

    const/16 v0, 0xf

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide/from16 v24, v5

    goto/16 :goto_14

    :goto_3
    const/4 v0, -0x1

    :goto_4
    const/4 v7, 0x0

    const-string v10, "Invalid assistant - must be a ComponentName"

    const-string v11, "Invalid listener - must be a ComponentName"

    packed-switch v0, :pswitch_data_0

    move-wide/from16 v24, v5

    :try_start_4
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/notification/NotificationShellCmd;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_13

    :pswitch_0
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    const-string v10, "help"

    if-nez v0, :cond_5

    move-object v0, v10

    goto :goto_5

    :cond_5
    :try_start_6
    const-string v11, "--"

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    if-eqz v11, :cond_6

    :try_start_7
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v11

    :cond_6
    :goto_5
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArg()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v19, v18

    move-object/from16 v14, v19

    if-nez v14, :cond_7

    move-object v0, v10

    :cond_7
    const/4 v10, 0x0

    const-wide/16 v19, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v21
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    sparse-switch v21, :sswitch_data_1

    :cond_8
    goto :goto_6

    :sswitch_12
    :try_start_9
    const-string v12, "context"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v16, v8

    goto :goto_7

    :sswitch_13
    const-string v12, "criterion"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v16, v13

    goto :goto_7

    :sswitch_14
    const-string/jumbo v12, "until"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v16, 0x3

    goto :goto_7

    :sswitch_15
    const-string v12, "for"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    const/16 v16, 0x4

    goto :goto_7

    :sswitch_16
    const-string v12, "condition"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    move/from16 v16, v15

    goto :goto_7

    :sswitch_17
    const-string v12, "duration"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v12, :cond_8

    const/16 v16, 0x5

    goto :goto_7

    :goto_6
    const/16 v16, -0x1

    :goto_7
    packed-switch v16, :pswitch_data_1

    move-object/from16 v23, v0

    move-wide/from16 v24, v5

    move-object v0, v14

    :try_start_a
    const-string/jumbo v5, "usage: cmd notification snooze (--for <msec> | --context <snooze-criterion-id>) <key>"
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto/16 :goto_b

    :pswitch_1
    :try_start_b
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v19, v16

    move-object/from16 v22, v14

    move-wide/from16 v13, v19

    goto :goto_8

    :pswitch_2
    move-object v10, v11

    move-object/from16 v22, v14

    move-wide/from16 v13, v19

    :goto_8
    const-wide/16 v16, 0x0

    cmp-long v18, v13, v16

    if-gtz v18, :cond_a

    if-eqz v10, :cond_9

    goto :goto_9

    :cond_9
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "error: invalid value for --"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ": "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v9, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    return v15

    :cond_a
    :goto_9
    :try_start_c
    new-instance v12, Lcom/android/server/notification/NotificationShellCmd$ShellNls;

    invoke-direct {v12, v7}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;-><init>(Lcom/android/server/notification/NotificationShellCmd$1;)V

    move-object v7, v12

    iget-object v12, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v12}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v12

    new-instance v8, Landroid/content/ComponentName;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    move-object/from16 v23, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v15, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v7, v12, v8, v0}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    invoke-direct {v1, v7}, Lcom/android/server/notification/NotificationShellCmd;->waitForBind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    if-nez v0, :cond_b

    :try_start_d
    const-string v0, "error: could not bind a listener in time"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const/4 v0, 0x1

    return v0

    :cond_b
    cmp-long v0, v13, v16

    if-lez v0, :cond_c

    :try_start_e
    const-string/jumbo v0, "snoozing <%s> until time: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v22, v8, v12

    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    move-wide/from16 v24, v5

    add-long v5, v15, v13

    :try_start_f
    invoke-direct {v12, v5, v6}, Ljava/util/Date;-><init>(J)V

    const/4 v5, 0x1

    aput-object v12, v8, v5

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v7, v0, v13, v14}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->snoozeNotification(Ljava/lang/String;J)V

    goto :goto_a

    :cond_c
    move-wide/from16 v24, v5

    move-object/from16 v0, v22

    const-string/jumbo v5, "snoozing <%s> until criterion: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v0, v6, v8

    const/4 v8, 0x1

    aput-object v10, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v7, v0, v10}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->snoozeNotification(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    invoke-direct {v1, v7, v0}, Lcom/android/server/notification/NotificationShellCmd;->waitForSnooze(Lcom/android/server/notification/NotificationShellCmd$ShellNls;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationShellCmd$ShellNls;->unregisterAsSystemService()V

    invoke-direct {v1, v7}, Lcom/android/server/notification/NotificationShellCmd;->waitForUnbind(Lcom/android/server/notification/NotificationShellCmd$ShellNls;)V

    goto/16 :goto_12

    :goto_b
    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    return v5

    :pswitch_3
    move-wide/from16 v24, v5

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    const-string v6, "--mute"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v0, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    :cond_d
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v6, v5}, Lcom/android/server/notification/SnoozeHelper;->getNotification(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v6

    if-eqz v6, :cond_e

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsnoozing: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v5, v7, v0}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    goto/16 :goto_12

    :cond_e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: no snoozed otification matching key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :pswitch_4
    move-wide/from16 v24, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v5}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_c
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " snoozed, time="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v12

    invoke-virtual {v5, v12, v8, v10}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeTimeForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " context="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v12

    invoke-virtual {v5, v12, v8, v10}, Lcom/android/server/notification/SnoozeHelper;->getSnoozeContextForUnpostedNotification(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_f
    goto/16 :goto_12

    :pswitch_5
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->getNotificationRecord(Ljava/lang/String;)Lcom/android/server/notification/NotificationRecord;

    move-result-object v5

    if-eqz v5, :cond_10

    const-string v6, ""

    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v5, v9, v6, v7, v8}, Lcom/android/server/notification/NotificationRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/Context;Z)V

    goto/16 :goto_12

    :cond_10
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error: no active notification matching key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, 0x1

    return v6

    :pswitch_6
    move-wide/from16 v24, v5

    iget-object v0, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_11
    goto/16 :goto_12

    :pswitch_7
    move-wide/from16 v24, v5

    invoke-direct {v1, v9, v3, v4}, Lcom/android/server/notification/NotificationShellCmd;->doNotify(Ljava/io/PrintWriter;Ljava/lang/String;I)I

    goto/16 :goto_12

    :pswitch_8
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v7, v8

    :cond_12
    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v3, v7, v0, v5}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    iget-object v10, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v0, v11}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v7, v10}, Landroid/os/UserHandle;->getUid(II)I

    move-result v10

    iget-object v11, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v11, v0, v10, v8}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto/16 :goto_12

    :pswitch_9
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v7, 0x3

    if-gt v5, v7, :cond_15

    if-gez v5, :cond_13

    goto :goto_e

    :cond_13
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v6, v7

    :cond_14
    iget-object v7, v1, Lcom/android/server/notification/NotificationShellCmd;->mPm:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v6, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    iget-object v8, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v8, v0, v7, v5}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    goto/16 :goto_12

    :cond_15
    :goto_e
    const-string v6, "Invalid preference - must be between 0-3 (0=none 1=all 2=selected)"

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v6, -0x1

    return v6

    :pswitch_a
    move-wide/from16 v24, v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    :cond_16
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->getApprovedAssistant(I)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_17

    const-string/jumbo v6, "null"

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_17
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_12

    :pswitch_b
    move-wide/from16 v24, v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    :cond_18
    iget-object v5, v1, Lcom/android/server/notification/NotificationShellCmd;->mDirectService:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v5, v0}, Lcom/android/server/notification/NotificationManagerService;->resetAssistantUserSet(I)V

    goto/16 :goto_12

    :pswitch_c
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_19

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_19
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    :cond_1a
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_12

    :pswitch_d
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1b

    invoke-virtual {v9, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_1b
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    :cond_1c
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    goto/16 :goto_12

    :pswitch_e
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1d

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_1d
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1e

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    :cond_1e
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-interface {v6, v0, v5, v7, v8}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_12

    :pswitch_f
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1f

    invoke-virtual {v9, v11}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, -0x1

    return v5

    :cond_1f
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_20

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    :cond_20
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x1

    invoke-interface {v6, v0, v5, v7, v7}, Landroid/app/INotificationManager;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    goto/16 :goto_12

    :pswitch_10
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    :cond_21
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v7, 0x0

    invoke-interface {v6, v0, v5, v7}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_12

    :pswitch_11
    move-wide/from16 v24, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->peekNextArg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_22

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    move v5, v6

    :cond_22
    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    const/4 v8, 0x1

    invoke-interface {v6, v0, v5, v8}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    goto/16 :goto_12

    :pswitch_12
    move-wide/from16 v24, v5

    move v6, v13

    move v8, v15

    const/4 v5, -0x1

    const/4 v7, 0x3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/NotificationShellCmd;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_2

    :cond_23
    goto :goto_f

    :sswitch_18
    const-string/jumbo v6, "none"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/16 v16, 0x0

    goto :goto_10

    :sswitch_19
    const-string/jumbo v6, "off"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/16 v16, 0x5

    goto :goto_10

    :sswitch_1a
    const-string v6, "all"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    const/16 v16, 0x4

    goto :goto_10

    :sswitch_1b
    const-string/jumbo v6, "on"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move/from16 v16, v8

    goto :goto_10

    :sswitch_1c
    const-string/jumbo v7, "priority"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_23

    move/from16 v16, v6

    goto :goto_10

    :sswitch_1d
    const-string v6, "alarms"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_23

    move/from16 v16, v7

    goto :goto_10

    :goto_f
    move/from16 v16, v5

    :goto_10
    packed-switch v16, :pswitch_data_2

    goto :goto_11

    :pswitch_13
    const/4 v10, 0x1

    goto :goto_11

    :pswitch_14
    const/4 v10, 0x4

    goto :goto_11

    :pswitch_15
    const/4 v10, 0x2

    goto :goto_11

    :pswitch_16
    const/4 v10, 0x3

    nop

    :goto_11
    move v5, v10

    iget-object v6, v1, Lcom/android/server/notification/NotificationShellCmd;->mBinderService:Landroid/app/INotificationManager;

    invoke-interface {v6, v3, v5}, Landroid/app/INotificationManager;->setInterruptionFilter(Ljava/lang/String;I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_2

    nop

    :goto_12
    goto :goto_15

    :catch_2
    move-exception v0

    goto :goto_14

    :goto_13
    return v0

    :catch_3
    move-exception v0

    move-wide/from16 v24, v5

    :goto_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred. Check logcat for details. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v5, "NotificationService"

    const-string v6, "Error running shell command"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_15
    const/4 v5, 0x0

    return v5

    :catchall_1
    move-exception v0

    move-wide/from16 v24, v5

    :goto_16
    invoke-static/range {v24 .. v25}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7a8dd0c2 -> :sswitch_11
        -0x677a47b2 -> :sswitch_10
        -0x4f05a8e6 -> :sswitch_f
        -0x3df868b7 -> :sswitch_e
        -0x3580721a -> :sswitch_d
        -0x19cf0b16 -> :sswitch_c
        -0x199eb9aa -> :sswitch_b
        -0x18b58921 -> :sswitch_a
        -0xa97a41 -> :sswitch_9
        0x18f56 -> :sswitch_8
        0x32b09e -> :sswitch_7
        0x3498a0 -> :sswitch_6
        0xca4be8a -> :sswitch_5
        0x16318b24 -> :sswitch_4
        0x28bd431f -> :sswitch_3
        0x4af068f8 -> :sswitch_2
        0x76556fbd -> :sswitch_1
        0x7dcb4968 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x76bbb26c -> :sswitch_17
        -0x335692e5 -> :sswitch_16
        0x18cc9 -> :sswitch_15
        0x6a47f5e -> :sswitch_14
        0x16e20ea1 -> :sswitch_13
        0x38b735af -> :sswitch_12
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x545a2fbe -> :sswitch_1d
        -0x4577865c -> :sswitch_1c
        0xddf -> :sswitch_1b
        0x179a1 -> :sswitch_1a
        0x1ad6f -> :sswitch_19
        0x33af38 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_16
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationShellCmd;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string/jumbo v1, "usage: cmd notification SUBCMD [args]\n\nSUBCMDs:\n  allow_listener COMPONENT [user_id (current user if not specified)]\n  disallow_listener COMPONENT [user_id (current user if not specified)]\n  allow_assistant COMPONENT [user_id (current user if not specified)]\n  remove_assistant COMPONENT [user_id (current user if not specified)]\n  set_dnd [on|none (same as on)|priority|alarms|all|off (same as all)]  allow_dnd PACKAGE [user_id (current user if not specified)]\n  disallow_dnd PACKAGE [user_id (current user if not specified)]\n  reset_assistant_user_set [user_id (current user if not specified)]\n  get_approved_assistant [user_id (current user if not specified)]\n  post [--help | flags] TAG TEXT\n  set_bubbles PACKAGE PREFERENCE (0=none 1=all 2=selected) [user_id (current user if not specified)]\n  set_bubbles_channel PACKAGE CHANNEL_ID ALLOW [user_id (current user if not specified)]\n  list\n  get <notification-key>\n  snooze --for <msec> <notification-key>\n  unsnooze <notification-key>\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method parseIcon(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Icon;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    const-string v0, "http:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "https:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "content:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "android.resource:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "@"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1

    :cond_3
    goto :goto_0

    :cond_4
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/drawable/Icon;->createWithData([BII)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    :cond_5
    :goto_0
    nop

    return-object v1

    :cond_6
    :goto_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/drawable/Icon;->createWithContentUri(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    return-object v1
.end method

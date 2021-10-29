.class public final Lcom/android/server/policy/SingleKeyGestureDetector;
.super Ljava/lang/Object;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;,
        Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;,
        Lcom/android/server/policy/SingleKeyGestureDetector$KeyGestureFlag;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final KEY_LONGPRESS:I = 0x2

.field public static final KEY_VERYLONGPRESS:I = 0x4

.field private static final MSG_KEY_DELAYED_PRESS:I = 0x2

.field private static final MSG_KEY_LONG_PRESS:I = 0x0

.field private static final MSG_KEY_VERY_LONG_PRESS:I = 0x1

.field private static final MULTI_PRESS_TIMEOUT:J

.field private static final TAG:Ljava/lang/String; = "SingleKeyGesture"


# instance fields
.field private mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

.field private mBeganFromNonInteractive:Z

.field private mDownKeyCode:I

.field private volatile mHandledByLongPress:Z

.field private final mHandler:Landroid/os/Handler;

.field private volatile mKeyPressCounter:I

.field private final mLongPressTimeout:J

.field private final mRules:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;",
            ">;"
        }
    .end annotation
.end field

.field private final mVeryLongPressTimeout:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getMultiPressTimeout()I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getDeviceGlobalActionKeyTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLongPressTimeout:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mVeryLongPressTimeout:J

    new-instance v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;-><init>(Lcom/android/server/policy/SingleKeyGestureDetector;)V

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/SingleKeyGestureDetector;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/server/policy/SingleKeyGestureDetector;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/policy/SingleKeyGestureDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    return v0
.end method

.method private interceptKeyDown(Landroid/view/KeyEvent;)V
    .locals 9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$000(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(J)V

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v1, :cond_3

    invoke-static {v1, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$100(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    :cond_3
    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_5

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v5, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$100(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    goto :goto_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v1, :cond_6

    return-void

    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$000(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v2, v0, v2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-wide v7, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mLongPressTimeout:J

    invoke-virtual {v6, v1, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_7
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$200(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v3, v0, v2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-wide v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mVeryLongPressTimeout:J

    invoke-virtual {v2, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    iget v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v6}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v6

    sub-int/2addr v6, v3

    if-ne v1, v6, :cond_9

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    iget v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    add-int/2addr v6, v3

    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JI)V

    iput v2, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    :cond_9
    :goto_2
    return-void
.end method

.method private interceptKeyUp(Landroid/view/KeyEvent;)Z
    .locals 8

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$300(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v5

    if-ne v0, v5, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getMaxMultiPressCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$300(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v1, v5, v2, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    :cond_2
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    invoke-static {v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$300(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v5

    iget v6, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    iget-object v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    sget-wide v5, Lcom/android/server/policy/SingleKeyGestureDetector;->MULTI_PRESS_TIMEOUT:J

    invoke-virtual {v1, v0, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->reset()V

    return v1
.end method


# virtual methods
.method addRule(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method beganFromNonInteractive()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    return v0
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "SingleKey rules:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mRules:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method getKeyPressCounter(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$300(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;)I

    move-result v0

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method interceptKey(Landroid/view/KeyEvent;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    :cond_0
    xor-int/lit8 v0, p2, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mBeganFromNonInteractive:Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyDown(Landroid/view/KeyEvent;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->interceptKeyUp(Landroid/view/KeyEvent;)Z

    :goto_0
    return-void
.end method

.method isKeyIntercepted(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->access$100(Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mKeyPressCounter:I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mActiveRule:Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mHandledByLongPress:Z

    iput v1, p0, Lcom/android/server/policy/SingleKeyGestureDetector;->mDownKeyCode:I

    return-void
.end method

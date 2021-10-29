.class Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;
.super Ljava/lang/Object;
.source "TaskStackNotifier.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field private final mListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mListenerRegistered:Z

.field private final mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;-><init>(Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->sendIntent()V

    return-void
.end method

.method private sendIntent()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mIntent:Landroid/app/PendingIntent;

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "TaskStackNotifier"

    const-string v1, "could not send intent"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onTaskChange:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

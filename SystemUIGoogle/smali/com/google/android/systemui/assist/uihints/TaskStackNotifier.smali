.class public final Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;
.super Ljava/lang/Object;
.source "TaskStackNotifier.java"

# interfaces
.implements Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfoListener;


# instance fields
.field public mIntent:Landroid/app/PendingIntent;

.field public final mListener:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;

.field public mListenerRegistered:Z

.field public final mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->INSTANCE:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    new-instance v0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;-><init>(Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;)V

    iput-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListener:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;

    return-void
.end method


# virtual methods
.method public final onConfigInfo(Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;)V
    .locals 1

    iget-object p1, p1, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$ConfigInfo;->onTaskChange:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListener:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListeners:Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListener:Lcom/google/android/systemui/assist/uihints/TaskStackNotifier$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/systemui/assist/uihints/TaskStackNotifier;->mListenerRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method

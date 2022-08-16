.class public final Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;
.super Lcom/android/systemui/media/ResumeMediaBrowser$Callback;
.source "MediaResumeListener.kt"


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$key:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTrack(Landroid/media/MediaDescription;Landroid/content/ComponentName;Lcom/android/systemui/media/ResumeMediaBrowser;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    const-string p2, "Can get resumable media from "

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaResumeListener"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object p2, p1, Lcom/android/systemui/media/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p2, p3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    new-instance v2, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;

    invoke-direct {v2, p1, v1}, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;-><init>(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)V

    invoke-virtual {p2, v2, v0}, Lcom/android/systemui/media/MediaDataManager;->setResumeAction(Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    iget-object v0, p1, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkotlin/Pair;

    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-virtual {v3, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v2, p3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    iget-object v0, p1, Lcom/android/systemui/media/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {v0}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, p2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    iget-object p2, p1, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result p2

    const/4 v0, 0x5

    if-le p2, v0, :cond_3

    iget-object p2, p1, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove()Ljava/lang/Object;

    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/media/MediaResumeListener;->writeSharedPrefs()V

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-virtual {p0, p3}, Lcom/android/systemui/media/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void
.end method

.method public final onConnected()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    const-string v0, "Connected to "

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "MediaResumeListener"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onError()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->$componentName:Landroid/content/ComponentName;

    const-string v1, "Cannot resume with "

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResumeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/media/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    return-void
.end method

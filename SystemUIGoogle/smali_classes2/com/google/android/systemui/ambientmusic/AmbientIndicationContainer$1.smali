.class Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AmbientIndicationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updatePill()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$1;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-static {p0}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->access$000(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;)Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object p0

    const-string p1, "AmbientIndication"

    invoke-interface {p0, p1}, Lcom/android/systemui/util/wakelock/WakeLock;->release(Ljava/lang/String;)V

    return-void
.end method

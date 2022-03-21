.class Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AmbientIndicationContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->updateColors()V
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

    iput-object p1, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$3;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer$3;->this$0:Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;->access$302(Lcom/google/android/systemui/ambientmusic/AmbientIndicationContainer;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method

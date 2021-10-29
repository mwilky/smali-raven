.class final Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;
.super Ljava/lang/Object;
.source "Action.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/Action;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;->this$0:Lcom/google/android/systemui/columbus/actions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;->this$0:Lcom/google/android/systemui/columbus/actions/Action;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, v1, v2, v1}, Lcom/google/android/systemui/columbus/actions/Action;->updateFeedbackEffects$default(Lcom/google/android/systemui/columbus/actions/Action;ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;ILjava/lang/Object;)V

    return-void
.end method

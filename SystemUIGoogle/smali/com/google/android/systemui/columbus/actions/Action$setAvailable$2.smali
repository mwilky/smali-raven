.class public final Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;
.super Ljava/lang/Object;
.source "Action.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/Action;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;->this$0:Lcom/google/android/systemui/columbus/actions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$2;->this$0:Lcom/google/android/systemui/columbus/actions/Action;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/columbus/actions/Action;->updateFeedbackEffects(ILcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V

    return-void
.end method

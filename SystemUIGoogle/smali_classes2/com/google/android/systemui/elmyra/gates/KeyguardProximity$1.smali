.class Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;
.super Ljava/lang/Object;
.source "KeyguardProximity.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-static {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->access$000(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V

    return-void
.end method

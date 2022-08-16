.class public final Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;
.super Ljava/lang/Object;
.source "KeyguardProximity.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity$1;->this$0:Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/KeyguardProximity;->updateProximityListener()V

    return-void
.end method

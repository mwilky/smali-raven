.class public final Lcom/google/android/systemui/columbus/actions/Action$setAvailable$1$1;
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
.field public final synthetic $it:Lcom/google/android/systemui/columbus/actions/Action$Listener;

.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/Action;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/Action$Listener;Lcom/google/android/systemui/columbus/actions/Action;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$1$1;->$it:Lcom/google/android/systemui/columbus/actions/Action$Listener;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$1$1;->this$0:Lcom/google/android/systemui/columbus/actions/Action;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$1$1;->$it:Lcom/google/android/systemui/columbus/actions/Action$Listener;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/Action$setAvailable$1$1;->this$0:Lcom/google/android/systemui/columbus/actions/Action;

    invoke-interface {v0, p0}, Lcom/google/android/systemui/columbus/actions/Action$Listener;->onActionAvailabilityChanged(Lcom/google/android/systemui/columbus/actions/Action;)V

    return-void
.end method

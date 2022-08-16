.class public final Lcom/google/android/systemui/elmyra/ElmyraService$1;
.super Ljava/lang/Object;
.source "ElmyraService.java"

# interfaces
.implements Lcom/google/android/systemui/elmyra/actions/Action$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/ElmyraService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/ElmyraService;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActionAvailabilityChanged()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService$1;->this$0:Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateSensorListener()V

    return-void
.end method

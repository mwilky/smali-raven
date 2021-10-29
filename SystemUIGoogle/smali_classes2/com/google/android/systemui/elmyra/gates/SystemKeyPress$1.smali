.class Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;
.super Ljava/lang/Object;
.source "SystemKeyPress.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleSystemKey(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->access$000(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    invoke-static {v1}, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;->access$000(Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;)[I

    move-result-object v1

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/gates/SystemKeyPress$1;->this$0:Lcom/google/android/systemui/elmyra/gates/SystemKeyPress;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/gates/TransientGate;->block()V

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

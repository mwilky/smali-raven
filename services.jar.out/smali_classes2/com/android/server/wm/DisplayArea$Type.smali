.class final enum Lcom/android/server/wm/DisplayArea$Type;
.super Ljava/lang/Enum;
.source "DisplayArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/wm/DisplayArea$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum ANY:Lcom/android/server/wm/DisplayArea$Type;

.field public static final enum BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/server/wm/DisplayArea$Type;

    const-string v1, "ABOVE_TASKS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/DisplayArea$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    new-instance v1, Lcom/android/server/wm/DisplayArea$Type;

    const-string v3, "BELOW_TASKS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/wm/DisplayArea$Type;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    new-instance v3, Lcom/android/server/wm/DisplayArea$Type;

    const-string v5, "ANY"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/wm/DisplayArea$Type;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/server/wm/DisplayArea$Type;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static checkChild(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V
    .locals 3

    sget-object v0, Lcom/android/server/wm/DisplayArea$1;->$SwitchMap$com$android$server$wm$DisplayArea$Type:[I

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayArea$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v0, "BELOW_TASKS can only contain BELOW_TASKS"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    goto :goto_2

    :pswitch_1
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    const-string v0, "ABOVE_TASKS can only contain ABOVE_TASKS"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static checkSiblings(Lcom/android/server/wm/DisplayArea$Type;Lcom/android/server/wm/DisplayArea$Type;)V
    .locals 5

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " must be above BELOW_TASKS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    if-ne p0, v0, :cond_2

    if-ne p1, v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " must be below ABOVE_TASKS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method static typeOf(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/DisplayArea$Type;
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/DisplayArea;

    iget-object v0, v0, Lcom/android/server/wm/DisplayArea;->mType:Lcom/android/server/wm/DisplayArea$Type;

    return-object v0

    :cond_0
    instance-of v0, p0, Lcom/android/server/wm/WindowToken;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/android/server/wm/WindowToken;

    invoke-static {v0}, Lcom/android/server/wm/DisplayArea$Type;->typeOf(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Type;

    move-result-object v0

    return-object v0

    :cond_1
    instance-of v0, p0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ANY:Lcom/android/server/wm/DisplayArea$Type;

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static typeOf(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Type;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->BELOW_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->ABOVE_TASKS:Lcom/android/server/wm/DisplayArea$Type;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wm/DisplayArea$Type;
    .locals 1

    const-class v0, Lcom/android/server/wm/DisplayArea$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DisplayArea$Type;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wm/DisplayArea$Type;
    .locals 1

    sget-object v0, Lcom/android/server/wm/DisplayArea$Type;->$VALUES:[Lcom/android/server/wm/DisplayArea$Type;

    invoke-virtual {v0}, [Lcom/android/server/wm/DisplayArea$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/wm/DisplayArea$Type;

    return-object v0
.end method

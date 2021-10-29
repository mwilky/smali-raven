.class final enum Lcom/android/wm/shell/pip/PipTaskOrganizer$State;
.super Ljava/lang/Enum;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/pip/PipTaskOrganizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/pip/PipTaskOrganizer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

.field public static final enum ENTERED_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

.field public static final enum ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

.field public static final enum ENTRY_SCHEDULED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

.field public static final enum EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

.field public static final enum TASK_APPEARED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

.field public static final enum UNDEFINED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;


# instance fields
.field private final mStateValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->UNDEFINED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    new-instance v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const-string v3, "TASK_APPEARED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    new-instance v3, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const-string v5, "ENTRY_SCHEDULED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTRY_SCHEDULED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    new-instance v5, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const-string v7, "ENTERING_PIP"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    new-instance v7, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const-string v9, "ENTERED_PIP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERED_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    new-instance v9, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const-string v11, "EXITING_PIP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->$VALUES:[Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->mStateValue:I

    return-void
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->isInPip()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/pip/PipTaskOrganizer$State;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->shouldBlockResizeRequest()Z

    move-result p0

    return p0
.end method

.method private isInPip()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->mStateValue:I

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->TASK_APPEARED:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->mStateValue:I

    if-lt p0, v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->mStateValue:I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldBlockResizeRequest()Z
    .locals 1

    iget p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->mStateValue:I

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->ENTERING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->mStateValue:I

    if-lt p0, v0, :cond_1

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->mStateValue:I

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/pip/PipTaskOrganizer$State;
    .locals 1

    const-class v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/pip/PipTaskOrganizer$State;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->$VALUES:[Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    invoke-virtual {v0}, [Lcom/android/wm/shell/pip/PipTaskOrganizer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/pip/PipTaskOrganizer$State;

    return-object v0
.end method

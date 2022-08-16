.class final enum Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
.super Ljava/lang/Enum;
.source "SetupCompatServiceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

.field public static final enum SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v1, 0x0

    const-string v2, "NOT_STARTED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->NOT_STARTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v3, 0x1

    const-string v4, "BIND_FAILED"

    invoke-direct {v2, v3, v4}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BIND_FAILED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v5, 0x2

    const-string v6, "BINDING"

    invoke-direct {v4, v5, v6}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->BINDING:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v6, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v7, 0x3

    const-string v8, "CONNECTED"

    invoke-direct {v6, v7, v8}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(ILjava/lang/String;)V

    sput-object v6, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v8, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v9, 0x4

    const-string v10, "DISCONNECTED"

    invoke-direct {v8, v9, v10}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(ILjava/lang/String;)V

    sput-object v8, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v10, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v11, 0x5

    const-string v12, "SERVICE_NOT_USABLE"

    invoke-direct {v10, v11, v12}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(ILjava/lang/String;)V

    sput-object v10, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    new-instance v12, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v13, 0x6

    const-string v14, "REBIND_REQUIRED"

    invoke-direct {v12, v13, v14}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;-><init>(ILjava/lang/String;)V

    sput-object v12, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v14, 0x7

    new-array v14, v14, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    aput-object v0, v14, v1

    aput-object v2, v14, v3

    aput-object v4, v14, v5

    aput-object v6, v14, v7

    aput-object v8, v14, v9

    aput-object v10, v14, v11

    aput-object v12, v14, v13

    sput-object v14, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->$VALUES:[Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    return-object v0
.end method

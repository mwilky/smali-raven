.class public final enum Landroid/net/shared/RouteUtils$ModifyOperation;
.super Ljava/lang/Enum;
.source "RouteUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/shared/RouteUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModifyOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/shared/RouteUtils$ModifyOperation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/shared/RouteUtils$ModifyOperation;

.field public static final enum ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

.field public static final enum REMOVE:Landroid/net/shared/RouteUtils$ModifyOperation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/net/shared/RouteUtils$ModifyOperation;

    const-string v1, "ADD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/shared/RouteUtils$ModifyOperation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/shared/RouteUtils$ModifyOperation;->ADD:Landroid/net/shared/RouteUtils$ModifyOperation;

    new-instance v1, Landroid/net/shared/RouteUtils$ModifyOperation;

    const-string v3, "REMOVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Landroid/net/shared/RouteUtils$ModifyOperation;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroid/net/shared/RouteUtils$ModifyOperation;->REMOVE:Landroid/net/shared/RouteUtils$ModifyOperation;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/net/shared/RouteUtils$ModifyOperation;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Landroid/net/shared/RouteUtils$ModifyOperation;->$VALUES:[Landroid/net/shared/RouteUtils$ModifyOperation;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/shared/RouteUtils$ModifyOperation;
    .locals 1

    const-class v0, Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/shared/RouteUtils$ModifyOperation;

    return-object v0
.end method

.method public static values()[Landroid/net/shared/RouteUtils$ModifyOperation;
    .locals 1

    sget-object v0, Landroid/net/shared/RouteUtils$ModifyOperation;->$VALUES:[Landroid/net/shared/RouteUtils$ModifyOperation;

    invoke-virtual {v0}, [Landroid/net/shared/RouteUtils$ModifyOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/shared/RouteUtils$ModifyOperation;

    return-object v0
.end method

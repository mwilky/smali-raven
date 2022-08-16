.class final enum Landroidx/slice/core/SliceActionImpl$ActionType;
.super Ljava/lang/Enum;
.source "SliceActionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/slice/core/SliceActionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/slice/core/SliceActionImpl$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final enum DATE_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final enum DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final enum TIME_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

.field public static final enum TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v1, 0x0

    const-string v2, "DEFAULT"

    invoke-direct {v0, v1, v2}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(ILjava/lang/String;)V

    sput-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->DEFAULT:Landroidx/slice/core/SliceActionImpl$ActionType;

    new-instance v2, Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v3, 0x1

    const-string v4, "TOGGLE"

    invoke-direct {v2, v3, v4}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(ILjava/lang/String;)V

    sput-object v2, Landroidx/slice/core/SliceActionImpl$ActionType;->TOGGLE:Landroidx/slice/core/SliceActionImpl$ActionType;

    new-instance v4, Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v5, 0x2

    const-string v6, "DATE_PICKER"

    invoke-direct {v4, v5, v6}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(ILjava/lang/String;)V

    sput-object v4, Landroidx/slice/core/SliceActionImpl$ActionType;->DATE_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    new-instance v6, Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v7, 0x3

    const-string v8, "TIME_PICKER"

    invoke-direct {v6, v7, v8}, Landroidx/slice/core/SliceActionImpl$ActionType;-><init>(ILjava/lang/String;)V

    sput-object v6, Landroidx/slice/core/SliceActionImpl$ActionType;->TIME_PICKER:Landroidx/slice/core/SliceActionImpl$ActionType;

    const/4 v8, 0x4

    new-array v8, v8, [Landroidx/slice/core/SliceActionImpl$ActionType;

    aput-object v0, v8, v1

    aput-object v2, v8, v3

    aput-object v4, v8, v5

    aput-object v6, v8, v7

    sput-object v8, Landroidx/slice/core/SliceActionImpl$ActionType;->$VALUES:[Landroidx/slice/core/SliceActionImpl$ActionType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/slice/core/SliceActionImpl$ActionType;
    .locals 1

    const-class v0, Landroidx/slice/core/SliceActionImpl$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/slice/core/SliceActionImpl$ActionType;

    return-object p0
.end method

.method public static values()[Landroidx/slice/core/SliceActionImpl$ActionType;
    .locals 1

    sget-object v0, Landroidx/slice/core/SliceActionImpl$ActionType;->$VALUES:[Landroidx/slice/core/SliceActionImpl$ActionType;

    invoke-virtual {v0}, [Landroidx/slice/core/SliceActionImpl$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/slice/core/SliceActionImpl$ActionType;

    return-object v0
.end method

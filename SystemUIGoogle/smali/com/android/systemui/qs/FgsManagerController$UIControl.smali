.class final enum Lcom/android/systemui/qs/FgsManagerController$UIControl;
.super Ljava/lang/Enum;
.source "FgsManagerController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/FgsManagerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIControl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/FgsManagerController$UIControl;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/qs/FgsManagerController$UIControl;

.field public static final enum HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerController$UIControl;

.field public static final enum HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerController$UIControl;

.field public static final enum NORMAL:Lcom/android/systemui/qs/FgsManagerController$UIControl;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/systemui/qs/FgsManagerController$UIControl;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/FgsManagerController$UIControl;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/qs/FgsManagerController$UIControl;->NORMAL:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    new-instance v2, Lcom/android/systemui/qs/FgsManagerController$UIControl;

    const/4 v3, 0x1

    const-string v4, "HIDE_BUTTON"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/qs/FgsManagerController$UIControl;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/qs/FgsManagerController$UIControl;->HIDE_BUTTON:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    new-instance v4, Lcom/android/systemui/qs/FgsManagerController$UIControl;

    const/4 v5, 0x2

    const-string v6, "HIDE_ENTRY"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/qs/FgsManagerController$UIControl;-><init>(ILjava/lang/String;)V

    sput-object v4, Lcom/android/systemui/qs/FgsManagerController$UIControl;->HIDE_ENTRY:Lcom/android/systemui/qs/FgsManagerController$UIControl;

    const/4 v6, 0x3

    new-array v6, v6, [Lcom/android/systemui/qs/FgsManagerController$UIControl;

    aput-object v0, v6, v1

    aput-object v2, v6, v3

    aput-object v4, v6, v5

    sput-object v6, Lcom/android/systemui/qs/FgsManagerController$UIControl;->$VALUES:[Lcom/android/systemui/qs/FgsManagerController$UIControl;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/FgsManagerController$UIControl;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/FgsManagerController$UIControl;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/FgsManagerController$UIControl;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/FgsManagerController$UIControl;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/FgsManagerController$UIControl;->$VALUES:[Lcom/android/systemui/qs/FgsManagerController$UIControl;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/FgsManagerController$UIControl;

    return-object v0
.end method

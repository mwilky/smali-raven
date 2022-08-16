.class final enum Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;
.super Ljava/lang/Enum;
.source "BadgedImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BadgedImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuppressionFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

.field public static final enum BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

.field public static final enum FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    const/4 v1, 0x0

    const-string v2, "FLYOUT_VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->FLYOUT_VISIBLE:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    new-instance v2, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    const/4 v3, 0x1

    const-string v4, "BEHIND_STACK"

    invoke-direct {v2, v3, v4}, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->BEHIND_STACK:Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->$VALUES:[Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;
    .locals 1

    const-class v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    return-object p0
.end method

.method public static values()[Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;
    .locals 1

    sget-object v0, Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->$VALUES:[Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    invoke-virtual {v0}, [Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/wm/shell/bubbles/BadgedImageView$SuppressionFlag;

    return-object v0
.end method

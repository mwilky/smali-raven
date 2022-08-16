.class final enum Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;
.super Ljava/lang/Enum;
.source "SmartReplyView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/SmartReplyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SmartButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

.field public static final enum ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

.field public static final enum REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    const/4 v1, 0x0

    const-string v2, "REPLY"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    new-instance v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    const/4 v3, 0x1

    const-string v4, "ACTION"

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;-><init>(ILjava/lang/String;)V

    sput-object v2, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->ACTION:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    aput-object v0, v4, v1

    aput-object v2, v4, v3

    sput-object v4, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->$VALUES:[Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->$VALUES:[Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    return-object v0
.end method

.class final Lcom/android/systemui/qs/user/UserSwitchDialogController$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UserSwitchDialogController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/content/Context;",
        "Lcom/android/systemui/statusbar/phone/SystemUIDialog;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/qs/user/UserSwitchDialogController$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$1;

    invoke-direct {v0}, Lcom/android/systemui/qs/user/UserSwitchDialogController$1;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/user/UserSwitchDialogController$1;->INSTANCE:Lcom/android/systemui/qs/user/UserSwitchDialogController$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/content/Context;

    new-instance p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

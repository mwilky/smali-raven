.class public final Lcom/android/systemui/privacy/PrivacyDialogControllerKt$defaultDialogProvider$1;
.super Ljava/lang/Object;
.source "PrivacyDialogController.kt"

# interfaces
.implements Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/privacy/PrivacyDialogControllerKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final makeDialog(Landroid/content/Context;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function4;)Lcom/android/systemui/privacy/PrivacyDialog;
    .locals 0

    new-instance p0, Lcom/android/systemui/privacy/PrivacyDialog;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/privacy/PrivacyDialog;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Lkotlin/jvm/functions/Function4;)V

    return-object p0
.end method

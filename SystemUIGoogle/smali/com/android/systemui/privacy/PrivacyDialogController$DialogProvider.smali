.class public interface abstract Lcom/android/systemui/privacy/PrivacyDialogController$DialogProvider;
.super Ljava/lang/Object;
.source "PrivacyDialogController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/privacy/PrivacyDialogController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DialogProvider"
.end annotation


# virtual methods
.method public abstract makeDialog(Landroid/content/Context;Ljava/util/List;Lkotlin/jvm/functions/Function2;)Lcom/android/systemui/privacy/PrivacyDialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/systemui/privacy/PrivacyDialog$PrivacyElement;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/android/systemui/privacy/PrivacyDialog;"
        }
    .end annotation
.end method

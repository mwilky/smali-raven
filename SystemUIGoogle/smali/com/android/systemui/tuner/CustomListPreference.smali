.class public Lcom/android/systemui/tuner/CustomListPreference;
.super Landroidx/preference/ListPreference;
.source "CustomListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/tuner/CustomListPreference$CustomListPreferenceDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public onDialogClosed()V
    .locals 0

    return-void
.end method

.method public onDialogCreated(Landroid/app/AlertDialog;)Landroid/app/Dialog;
    .locals 0

    return-object p1
.end method

.method public onDialogStateRestored(Landroid/app/Dialog;)V
    .locals 0

    return-void
.end method

.method public onPrepareDialogBuilder(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method

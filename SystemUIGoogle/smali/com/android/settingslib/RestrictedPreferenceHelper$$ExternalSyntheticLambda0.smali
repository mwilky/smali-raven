.class public final synthetic Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/android/settingslib/RestrictedPreferenceHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settingslib/RestrictedPreferenceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/RestrictedPreferenceHelper;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper$$ExternalSyntheticLambda0;->f$0:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-object p0, p0, Lcom/android/settingslib/RestrictedPreferenceHelper;->mContext:Landroid/content/Context;

    const v0, 0x7f1302ae

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

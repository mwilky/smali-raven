.class public final synthetic Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Landroidx/preference/Preference;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iput-object p3, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$$ExternalSyntheticLambda0;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$$ExternalSyntheticLambda0;->f$1:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog$$ExternalSyntheticLambda0;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settings/privacy/EnableContentCaptureWithServiceSettingsPreferenceController$ProfileSelectDialog;->$r8$lambda$8QvgzQpe2ZgGnR9KUMB1OVM_pvA(Ljava/util/ArrayList;Landroidx/preference/Preference;Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

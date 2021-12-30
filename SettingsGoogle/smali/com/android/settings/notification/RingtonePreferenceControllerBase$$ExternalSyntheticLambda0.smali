.class public final synthetic Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/preference/Preference;

.field public final synthetic f$1:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/Preference;

    iput-object p2, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;->f$0:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase$$ExternalSyntheticLambda0;->f$1:Ljava/lang/CharSequence;

    invoke-static {v0, p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->$r8$lambda$aUHWGP00klUNQmQfWnpLyskuNB0(Landroidx/preference/Preference;Ljava/lang/CharSequence;)V

    return-void
.end method

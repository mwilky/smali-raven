.class public final synthetic Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

.field public final synthetic f$1:Landroid/app/NotificationChannelGroup;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannelGroup;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/app/ChannelListPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/app/ChannelListPreferenceController$$ExternalSyntheticLambda0;->f$1:Landroid/app/NotificationChannelGroup;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/app/ChannelListPreferenceController;->$r8$lambda$Li9K-7r5milXeDSQTHk57-TSiwo(Lcom/android/settings/notification/app/ChannelListPreferenceController;Landroid/app/NotificationChannelGroup;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

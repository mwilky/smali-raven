.class public final synthetic Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

.field public final synthetic f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    iput-object p2, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;

    iget-object p0, p0, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController$$ExternalSyntheticLambda0;->f$1:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, p0, p1}, Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;->$r8$lambda$gdIoQARLbLA5PiulU1X6Yyqz_j4(Lcom/android/settings/notification/zen/ZenModeAddBypassingAppsPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

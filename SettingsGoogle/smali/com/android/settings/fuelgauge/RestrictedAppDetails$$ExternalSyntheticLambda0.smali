.class public final synthetic Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

.field public final synthetic f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/fuelgauge/RestrictedAppDetails;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/RestrictedAppDetails$$ExternalSyntheticLambda0;->f$1:Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    invoke-static {v0, p0, p1, p2}, Lcom/android/settings/fuelgauge/RestrictedAppDetails;->$r8$lambda$98-QE1D5MbgpSnfsfAUscFtRcBc(Lcom/android/settings/fuelgauge/RestrictedAppDetails;Lcom/android/settings/fuelgauge/batterytip/AppInfo;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

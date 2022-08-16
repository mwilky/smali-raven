.class public final synthetic Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/tuner/PluginFragment;

.field public final synthetic f$1:Landroid/util/ArrayMap;

.field public final synthetic f$2:Lcom/android/systemui/shared/plugins/PluginManager;

.field public final synthetic f$3:Landroid/content/Context;

.field public final synthetic f$4:Landroidx/preference/PreferenceScreen;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/tuner/PluginFragment;Landroid/util/ArrayMap;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/content/Context;Landroidx/preference/PreferenceScreen;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/PluginFragment;

    iput-object p2, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    iput-object p3, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/shared/plugins/PluginManager;

    iput-object p4, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    iput-object p5, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$4:Landroidx/preference/PreferenceScreen;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/tuner/PluginFragment;

    iget-object v1, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$1:Landroid/util/ArrayMap;

    iget-object v2, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$2:Lcom/android/systemui/shared/plugins/PluginManager;

    iget-object v3, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$3:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/tuner/PluginFragment$$ExternalSyntheticLambda0;->f$4:Landroidx/preference/PreferenceScreen;

    check-cast p1, Landroid/content/pm/PackageInfo;

    sget v4, Lcom/android/systemui/tuner/PluginFragment;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Lcom/android/systemui/shared/plugins/PluginManager;->getPrivilegedPlugins()[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;

    iget-object v0, v0, Lcom/android/systemui/tuner/PluginFragment;->mPluginEnabler:Lcom/android/systemui/plugins/PluginEnablerImpl;

    invoke-direct {v2, v3, p1, v0}, Lcom/android/systemui/tuner/PluginFragment$PluginPreference;-><init>(Landroid/content/Context;Landroid/content/pm/PackageInfo;Lcom/android/systemui/plugins/PluginEnablerImpl;)V

    const-string v0, "Plugins: "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    :goto_1
    return-void
.end method

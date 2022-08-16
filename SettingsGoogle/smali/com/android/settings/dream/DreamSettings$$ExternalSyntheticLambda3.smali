.class public final synthetic Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dream/DreamSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dream/DreamSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dream/DreamSettings;

    iput-boolean p2, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;->f$1:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dream/DreamSettings;

    iget-boolean p0, p0, Lcom/android/settings/dream/DreamSettings$$ExternalSyntheticLambda3;->f$1:Z

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    invoke-static {v0, p0, p1}, Lcom/android/settings/dream/DreamSettings;->$r8$lambda$GKYNyy53Zoys-KV64GhI2sj4m8c(Lcom/android/settings/dream/DreamSettings;ZLcom/android/settingslib/core/AbstractPreferenceController;)V

    return-void
.end method

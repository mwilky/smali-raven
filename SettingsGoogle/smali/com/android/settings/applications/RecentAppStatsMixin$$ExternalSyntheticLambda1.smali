.class public final synthetic Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

.field public final synthetic f$1:Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iput-object p2, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/applications/RecentAppStatsMixin;

    iget-object p0, p0, Lcom/android/settings/applications/RecentAppStatsMixin$$ExternalSyntheticLambda1;->f$1:Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;

    invoke-static {v0, p0}, Lcom/android/settings/applications/RecentAppStatsMixin;->$r8$lambda$VtIgUem8irWbkqsfbGut2YIHmiA(Lcom/android/settings/applications/RecentAppStatsMixin;Lcom/android/settings/applications/RecentAppStatsMixin$RecentAppStatsListener;)V

    return-void
.end method

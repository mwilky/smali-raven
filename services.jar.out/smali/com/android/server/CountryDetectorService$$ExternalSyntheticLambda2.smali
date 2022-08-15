.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;

.field public final synthetic f$1:Landroid/location/CountryListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CountryDetectorService;

    iput-object p2, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$1:Landroid/location/CountryListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/CountryDetectorService;

    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda2;->f$1:Landroid/location/CountryListener;

    invoke-static {v0, p0}, Lcom/android/server/CountryDetectorService;->$r8$lambda$GuhZH7A_aehxVbgO-4H_eNK2Ucw(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    return-void
.end method

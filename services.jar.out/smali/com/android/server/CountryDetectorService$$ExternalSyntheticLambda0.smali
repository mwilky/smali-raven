.class public final synthetic Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/location/CountryListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/CountryDetectorService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/CountryDetectorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    return-void
.end method


# virtual methods
.method public final onCountryDetected(Landroid/location/Country;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/CountryDetectorService$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/CountryDetectorService;

    invoke-static {p0, p1}, Lcom/android/server/CountryDetectorService;->$r8$lambda$ovIJ1C5IPvLu1cVC9mnVGfLbHwg(Lcom/android/server/CountryDetectorService;Landroid/location/Country;)V

    return-void
.end method

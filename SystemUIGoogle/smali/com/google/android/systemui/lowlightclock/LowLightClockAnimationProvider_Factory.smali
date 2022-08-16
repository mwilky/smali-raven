.class public final Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;
.super Ljava/lang/Object;
.source "LowLightClockAnimationProvider_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;",
        ">;"
    }
.end annotation


# instance fields
.field public final alphaAnimationInDurationProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final alphaAnimationInStartDelayMillisProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final alphaAnimationOutDurationMillisProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final alphaAnimationOutStartDelayMillisProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final yTranslationAnimationInDurationMillisProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final yTranslationAnimationInStartOffsetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final yTranslationAnimationOutDurationMillisProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final yTranslationAnimationOutEndOffsetProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideTaskSurfaceHelperFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationInStartOffsetProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationInDurationMillisProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationInStartDelayMillisProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationInDurationProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationOutEndOffsetProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationOutDurationMillisProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationOutStartDelayMillisProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationOutDurationMillisProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationInStartOffsetProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationInDurationMillisProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationInStartDelayMillisProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationInDurationProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationOutEndOffsetProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->yTranslationAnimationOutDurationMillisProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    iget-object v1, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationOutStartDelayMillisProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iget-object v0, v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider_Factory;->alphaAnimationOutDurationMillisProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    new-instance v0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;

    move-object v2, v0

    invoke-direct/range {v2 .. v16}, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider;-><init>(IJJJIJJJ)V

    return-object v0
.end method

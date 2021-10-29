.class public final synthetic Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/inject/Provider;


# instance fields
.field public final synthetic f$0:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle$$ExternalSyntheticLambda0;->f$0:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/qs/tileimpl/QSFactoryImplGoogle$$ExternalSyntheticLambda0;->f$0:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/tiles/BatterySaverTile;

    return-object p0
.end method

.class public final synthetic Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/audio/AudioService$RestorableParameters$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/audio/AudioService$RestorableParameters;->$r8$lambda$gvBS4kjBFz3YcSPGsSRUFKDoa4c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

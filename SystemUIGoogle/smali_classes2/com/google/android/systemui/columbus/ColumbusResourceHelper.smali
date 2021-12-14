.class public final Lcom/google/android/systemui/columbus/ColumbusResourceHelper;
.super Ljava/lang/Object;
.source "ColumbusResourceHelper.java"


# static fields
.field public static final BOUNCER_MESSAGE_RESID:I

.field public static final SUMATRA_ALLOW_LIST:I

.field public static final SUMATRA_CERT_LIST:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/android/systemui/R$string;->columbus_bouncer_message:I

    sput v0, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->BOUNCER_MESSAGE_RESID:I

    sget v0, Lcom/android/systemui/R$array;->columbus_sumatra_package_allow_list:I

    sput v0, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->SUMATRA_ALLOW_LIST:I

    sget v0, Lcom/android/systemui/R$array;->columbus_sumatra_cert_allow_list:I

    sput v0, Lcom/google/android/systemui/columbus/ColumbusResourceHelper;->SUMATRA_CERT_LIST:I

    return-void
.end method

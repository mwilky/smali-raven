.class public final synthetic Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

.field public final synthetic f$1:Landroid/telephony/PinResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;Landroid/telephony/PinResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk$$ExternalSyntheticLambda0;->f$1:Landroid/telephony/PinResult;

    invoke-static {v0, p0}, Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;->$r8$lambda$wlV7vzwZ_sTGeFwZR9-x0WzSmNE(Lcom/android/keyguard/KeyguardSimPukViewController$CheckSimPuk;Landroid/telephony/PinResult;)V

    return-void
.end method

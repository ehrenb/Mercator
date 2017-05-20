.class synthetic Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;
.super Ljava/lang/Object;
.source "AppViewFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

.field static final synthetic $SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 887
    invoke-static {}, Lcm/aptoide/pt/model/v7/Malware$Rank;->values()[Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->TRUSTED:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->WARNING:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->CRITICAL:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->UNKNOWN:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    .line 550
    :goto_3
    invoke-static {}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->values()[Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    :try_start_4
    sget-object v0, Lcm/aptoide/pt/v8engine/fragment/implementations/AppViewFragment$2;->$SwitchMap$cm$aptoide$pt$utils$GenericDialogs$EResponse:[I

    sget-object v1, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->YES:Lcm/aptoide/pt/utils/GenericDialogs$EResponse;

    invoke-virtual {v1}, Lcm/aptoide/pt/utils/GenericDialogs$EResponse;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    return-void

    :catch_0
    move-exception v0

    goto :goto_4

    .line 887
    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_1

    :catch_4
    move-exception v0

    goto :goto_0
.end method

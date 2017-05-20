.class synthetic Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;
.super Ljava/lang/Object;
.source "DialogBadgeV7.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

.field static final synthetic $SwitchMap$cm$aptoide$pt$model$v7$Malware$Reason$Status:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 97
    invoke-static {}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->values()[Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Reason$Status:[I

    :try_start_0
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Reason$Status:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->passed:Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Reason$Status:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->failed:Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Reason$Status:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->blacklisted:Lcm/aptoide/pt/model/v7/Malware$Reason$Status;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Reason$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 61
    :goto_2
    invoke-static {}, Lcm/aptoide/pt/model/v7/Malware$Rank;->values()[Lcm/aptoide/pt/model/v7/Malware$Rank;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    :try_start_3
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->TRUSTED:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->WARNING:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lcm/aptoide/pt/v8engine/dialog/DialogBadgeV7$1;->$SwitchMap$cm$aptoide$pt$model$v7$Malware$Rank:[I

    sget-object v1, Lcm/aptoide/pt/model/v7/Malware$Rank;->UNKNOWN:Lcm/aptoide/pt/model/v7/Malware$Rank;

    invoke-virtual {v1}, Lcm/aptoide/pt/model/v7/Malware$Rank;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 97
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method

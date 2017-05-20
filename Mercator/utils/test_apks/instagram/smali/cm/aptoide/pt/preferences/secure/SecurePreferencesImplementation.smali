.class public Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;
.super Ljava/lang/Object;
.source "SecurePreferencesImplementation.java"

# interfaces
.implements Landroid/content/SharedPreferences;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Landroid/content/SharedPreferences;

.field private static sFile:Landroid/content/SharedPreferences;

.field private static secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 36
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    .line 39
    :cond_0
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    if-nez v0, :cond_1

    .line 40
    new-instance v0, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    invoke-direct {v0, p1, v1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;-><init>(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder$Builder;->create()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    move-result-object v0

    sput-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 42
    :cond_1
    return-void
.end method

.method static synthetic access$100()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200()Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    return-object v0
.end method

.method public static getInstance()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 45
    invoke-static {}, Lcm/aptoide/pt/preferences/Application;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->instance:Landroid/content/SharedPreferences;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->instance:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;

    invoke-direct {v0, p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->instance:Landroid/content/SharedPreferences;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->instance:Landroid/content/SharedPreferences;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic edit()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->edit()Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;

    move-result-object v0

    return-object v0
.end method

.method public edit()Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$Editor;-><init>(Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation$1;)V

    return-object v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 62
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 63
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    :try_start_0
    sget-object v4, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v4, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 66
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    goto :goto_0

    .line 71
    :cond_0
    return-object v2
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 3

    .prologue
    .line 134
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 135
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 136
    if-nez v0, :cond_0

    .line 140
    :goto_0
    return p2

    :cond_0
    :try_start_0
    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 3

    .prologue
    .line 121
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 122
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 123
    if-nez v0, :cond_0

    .line 127
    :goto_0
    return p2

    :cond_0
    :try_start_0
    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 3

    .prologue
    .line 95
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 96
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-nez v0, :cond_0

    .line 101
    :goto_0
    return p2

    :cond_0
    :try_start_0
    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 4

    .prologue
    .line 108
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 109
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 110
    if-nez v0, :cond_0

    .line 114
    :goto_0
    return-wide p2

    :cond_0
    :try_start_0
    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p2

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 75
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 76
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_0

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-virtual {v1, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 82
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    sget-object v1, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    .line 83
    invoke-virtual {v1, p1}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 84
    if-nez v0, :cond_1

    .line 91
    :cond_0
    return-object p2

    .line 87
    :cond_1
    new-instance p2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {p2, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 88
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 89
    sget-object v2, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->secureCoderDecoder:Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;

    invoke-virtual {v2, v0}, Lcm/aptoide/pt/preferences/secure/SecureCoderDecoder;->decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 157
    return-void
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcm/aptoide/pt/preferences/secure/SecurePreferencesImplementation;->sFile:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 162
    return-void
.end method

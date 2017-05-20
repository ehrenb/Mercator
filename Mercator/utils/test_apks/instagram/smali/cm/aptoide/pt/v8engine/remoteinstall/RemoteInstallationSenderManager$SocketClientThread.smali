.class Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;
.super Landroid/os/AsyncTask;
.source "RemoteInstallationSenderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketClientThread"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private app:Ljava/lang/String;

.field private device:Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

.field final synthetic this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;


# direct methods
.method public constructor <init>(Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 201
    iput-object p2, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->device:Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    .line 202
    iput-object p3, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->app:Ljava/lang/String;

    .line 203
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 9

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    .line 206
    .line 210
    :try_start_0
    new-instance v3, Ljava/net/Socket;

    iget-object v1, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->device:Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    invoke-virtual {v1}, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    iget-object v2, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->device:Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;

    invoke-virtual {v2}, Lcm/aptoide/pt/v8engine/remoteinstall/ReceiverDevice;->getPort()I

    move-result v2

    invoke-direct {v3, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    const/16 v1, 0x2710

    :try_start_1
    invoke-virtual {v3, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 212
    new-instance v2, Ljava/io/PrintWriter;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 215
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apkinstall_appid="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->app:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Install - SocketClientThread Sent: apkinstall_appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 219
    sget-object v4, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Install - SocketClientThread Received: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receivedpayload="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->app:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 222
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v0

    .line 229
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_0

    .line 231
    :try_start_4
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 236
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 239
    :cond_1
    if-eqz v1, :cond_2

    .line 241
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 247
    :cond_2
    :goto_1
    return-object v0

    .line 232
    :catch_0
    move-exception v3

    .line 233
    sget-object v4, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Install - SocketClientThread Closing Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :catch_1
    move-exception v1

    .line 243
    sget-object v2, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Install - SocketClientThread BR Closing Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 223
    :cond_3
    :try_start_6
    const-string v4, "INVALIDPAYLOAD"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 224
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v0

    .line 229
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 231
    :try_start_7
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 236
    :cond_4
    :goto_2
    if-eqz v2, :cond_5

    .line 237
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 239
    :cond_5
    if-eqz v1, :cond_2

    .line 241
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 242
    :catch_2
    move-exception v1

    .line 243
    sget-object v2, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Install - SocketClientThread BR Closing Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 232
    :catch_3
    move-exception v3

    .line 233
    sget-object v4, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Install - SocketClientThread Closing Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 229
    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 231
    :try_start_9
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 236
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 237
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 239
    :cond_8
    if-eqz v1, :cond_9

    .line 241
    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 247
    :cond_9
    :goto_4
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_1

    .line 232
    :catch_4
    move-exception v0

    .line 233
    sget-object v3, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remote Install - SocketClientThread Closing Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 242
    :catch_5
    move-exception v0

    .line 243
    sget-object v1, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Install - SocketClientThread BR Closing Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 226
    :catch_6
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    .line 227
    :goto_5
    const/4 v0, 0x0

    :try_start_b
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    move-result-object v0

    .line 229
    if-eqz v3, :cond_a

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_a

    .line 231
    :try_start_c
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 236
    :cond_a
    :goto_6
    if-eqz v2, :cond_b

    .line 237
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 239
    :cond_b
    if-eqz v1, :cond_2

    .line 241
    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_1

    .line 242
    :catch_7
    move-exception v1

    .line 243
    sget-object v2, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Install - SocketClientThread BR Closing Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 232
    :catch_8
    move-exception v3

    .line 233
    sget-object v4, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Install - SocketClientThread Closing Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 229
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_7
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/net/Socket;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    .line 231
    :try_start_e
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_9

    .line 236
    :cond_c
    :goto_8
    if-eqz v2, :cond_d

    .line 237
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 239
    :cond_d
    if-eqz v1, :cond_e

    .line 241
    :try_start_f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_a

    .line 244
    :cond_e
    :goto_9
    throw v0

    .line 232
    :catch_9
    move-exception v3

    .line 233
    sget-object v4, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote Install - SocketClientThread Closing Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 242
    :catch_a
    move-exception v1

    .line 243
    sget-object v2, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote Install - SocketClientThread BR Closing Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 229
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_7

    :catchall_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_7

    :catchall_3
    move-exception v0

    goto :goto_7

    .line 226
    :catch_b
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    goto/16 :goto_5

    :catch_c
    move-exception v1

    move-object v1, v0

    goto/16 :goto_5

    :catch_d
    move-exception v0

    goto/16 :goto_5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 196
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->listener:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;->onAppSendSuccess()V

    .line 256
    :goto_0
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 257
    return-void

    .line 254
    :cond_0
    iget-object v0, p0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->this$0:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;

    iget-object v0, v0, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager;->listener:Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;

    invoke-interface {v0}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderListener;->onAppSendUnsuccess()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 196
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcm/aptoide/pt/v8engine/remoteinstall/RemoteInstallationSenderManager$SocketClientThread;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
